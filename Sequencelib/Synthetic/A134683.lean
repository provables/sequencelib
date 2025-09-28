/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A134683 sequence 
-/


namespace Sequence

@[OEIS := A134683, offset := 0, derive := true, maxIndex := 33]
def A134683 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop2 (λ (x y : ℤ) ↦ ((y % 2) + x) + x) (λ (_x _y : ℤ) ↦ 1) x 1 x / 2) + 1)

end Sequence

