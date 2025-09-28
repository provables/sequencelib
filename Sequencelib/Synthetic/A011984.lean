/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A011984 sequence 
-/


namespace Sequence

@[OEIS := A011984, offset := 6, derive := true, maxIndex := 5]
def A011984 (n : ℕ) : ℕ :=
  let x := n - 6
  Int.toNat <| ((1 + (2 + loop2 (λ (x y : ℤ) ↦ x + y) (λ (x _y : ℤ) ↦ x) x 2 1)) + x * x)

end Sequence

