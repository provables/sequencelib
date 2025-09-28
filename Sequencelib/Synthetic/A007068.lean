/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A007068 sequence 
-/


namespace Sequence

@[OEIS := A007068, offset := 1, derive := true, maxIndex := 100]
def A007068 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ x + y) (λ (x y : ℤ) ↦ if (y - x) ≤ 0 then x * 2 else x) x 1 2

end Sequence

