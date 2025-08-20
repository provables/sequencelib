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
# A040135 sequence 
-/


namespace Sequence

@[OEIS := A040135, offset := 0, derive := true, maxIndex := 66]
def A040135 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop2 (λ (x y : ℤ) ↦ (2 + y) / x) (λ (_x _y : ℤ) ↦ 2) x 2 0 * 2) * 3)

end Sequence

