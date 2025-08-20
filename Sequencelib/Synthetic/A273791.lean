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
# A273791 sequence 
-/


namespace Sequence

@[OEIS := A273791, offset := 0, derive := true, maxIndex := 100]
def A273791 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop2 (λ (_x y : ℤ) ↦ 1 + y) (λ (_x _y : ℤ) ↦ 1) x 1 2 + x) + x) * 4)

end Sequence

