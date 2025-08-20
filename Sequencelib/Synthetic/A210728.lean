/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta
import GenSeq

open Synth

/-!
# A210728 sequence 
-/


namespace Sequence

@[OEIS := A210728, offset := 0, derive := true, maxIndex := 100]
def A210728 (x : ℕ) : ℕ :=
  Int.toNat <| (((2 * loop2 (λ (x y : ℤ) ↦ x + y) (λ (x _y : ℤ) ↦ 2 + x) x 1 1) - 1) - x)

end Sequence

