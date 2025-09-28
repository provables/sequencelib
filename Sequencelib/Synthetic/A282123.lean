/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A282123 sequence 
-/


namespace Sequence

@[OEIS := A282123, offset := 0, derive := true, maxIndex := 100]
def A282123 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ x + y) (λ (x _y : ℤ) ↦ 2 * x) x 2 (1 + (x % 2)) - 1)

end Sequence

