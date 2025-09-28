/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A094347 sequence 
-/


namespace Sequence

@[OEIS := A094347, offset := 0, derive := true, maxIndex := 50]
def A094347 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y : ℤ) ↦ y) (λ (x y : ℤ) ↦ (2 * (y + y)) - x) (x + x) 2 1

end Sequence

