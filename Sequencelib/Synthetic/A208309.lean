/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A208309 sequence 
-/


namespace Sequence

@[OEIS := A208309, offset := 1, derive := true, maxIndex := 100]
def A208309 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 * loop2 (λ (x y : ℤ) ↦ (2 * (x + x)) + y) (λ (x y : ℤ) ↦ x + y) x 2 1)

end Sequence

