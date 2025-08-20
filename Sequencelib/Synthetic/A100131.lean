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
# A100131 sequence 
-/


namespace Sequence

@[OEIS := A100131, offset := 0, derive := true, maxIndex := 100]
def A100131 (x : ℕ) : ℕ :=
  Int.toNat <| (((x + loop2 (λ (x y : ℤ) ↦ (x + x) + y) (λ (x _y : ℤ) ↦ x) x 1 0) / 2) + 1)

end Sequence

