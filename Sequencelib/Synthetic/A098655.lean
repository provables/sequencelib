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
# A098655 sequence 
-/


namespace Sequence

@[OEIS := A098655, offset := 0, derive := true, maxIndex := 29]
def A098655 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ x + x) x (1 + loop2 (λ (_x y : ℤ) ↦ 2 * y) (λ (x _y : ℤ) ↦ x) x 2 0)

end Sequence

