/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A168583 sequence 
-/


namespace Sequence

@[OEIS := A168583, offset := 3, derive := true, maxIndex := 27]
def A168583 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ 3 * (x + y)) (λ (_x y : ℤ) ↦ y + y) x 0 1 + 1)

end Sequence

