/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A118831 sequence 
-/


namespace Sequence

@[OEIS := A118831, offset := 1, derive := true, maxIndex := 100]
def A118831 (n : ℕ) : ℤ :=
  let x := n - 1
  (((1 + loop2 (λ (x y : ℤ) ↦ y - x) (λ (x _y : ℤ) ↦ x) x 2 1) % 3) - 1)

end Sequence

