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
# A254660 sequence 
-/


namespace Sequence

@[OEIS := A254660, offset := 0, derive := true, maxIndex := 100]
def A254660 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ 2 * (((x + x) + x) + y)) (λ (x _y : ℤ) ↦ x) x 2 1 / 2)

end Sequence

