/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001056 sequence 
-/


namespace Sequence

@[OEIS := A001056, offset := 0, derive := true, maxIndex := 10]
def A001056 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ 1 + (x * y)) (λ (x _y : ℤ) ↦ x) x 1 2

end Sequence

