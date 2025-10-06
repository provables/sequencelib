/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A285995 sequence
-/

namespace Sequence

@[OEIS := A285995, offset := 0, maxIndex := 4, derive := true]
def A285995 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ 1 + loop (λ (x _y) ↦ x + x) y x) x 0 / 2) / 2

end Sequence