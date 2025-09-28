/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A083072 sequence 
-/


namespace Sequence

@[OEIS := A083072, offset := 0, derive := true, maxIndex := 17]
def A083072 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ ((2 + (2 + y)) * x) - 1) (λ (_x y : ℤ) ↦ y) x 1 x

end Sequence

