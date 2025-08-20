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
# A109975 sequence 
-/


namespace Sequence

@[OEIS := A109975, offset := 0, derive := true, maxIndex := 100]
def A109975 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop2 (λ (x y : ℤ) ↦ (x + x) + y) (λ (_x _y : ℤ) ↦ 2) x 2 x / 2) / 2) + 1)

end Sequence

