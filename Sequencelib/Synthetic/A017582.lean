/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017582 sequence 
-/


namespace Sequence

@[OEIS := A017582, offset := 0, derive := true, maxIndex := 29]
def A017582 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ x * x) 1 (loop (λ (x y : ℤ) ↦ 1 + ((2 + y) * x)) 2 x)

end Sequence

