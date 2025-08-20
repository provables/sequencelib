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
# A079757 sequence 
-/


namespace Sequence

@[OEIS := A079757, offset := 0, derive := true, maxIndex := 100]
def A079757 (x : ℕ) : ℤ :=
  loop2 (λ (x y : ℤ) ↦ y - x) (λ (x _y : ℤ) ↦ loop (λ (_x _y : ℤ) ↦ 1 - 3) x 1) x 1 1

end Sequence

