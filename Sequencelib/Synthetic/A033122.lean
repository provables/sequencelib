/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A033122 sequence 
-/


namespace Sequence

@[OEIS := A033122, offset := 1, derive := true, maxIndex := 100]
def A033122 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (2 * (x + x)) + y % 2) (λ (x y : ℤ) ↦ x + y) x 1 0

end Sequence

