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
# A285995 sequence 
-/


namespace Sequence

@[OEIS := A285995, offset := 0, derive := true, maxIndex := 5]
def A285995 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y : ℤ) ↦ 1 + loop (λ (x _y : ℤ) ↦ x + x) y x) x 0 / 2) / 2)

end Sequence

