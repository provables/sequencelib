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
# A263426 sequence 
-/


namespace Sequence

@[OEIS := A263426, offset := 0, derive := true, maxIndex := 67]
def A263426 (x : ℕ) : ℕ :=
  Int.toNat <| (x + loop2 (λ (_x y : ℤ) ↦ -y) (λ (x _y : ℤ) ↦ x) x 2 0)

end Sequence

