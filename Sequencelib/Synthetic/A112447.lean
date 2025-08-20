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
# A112447 sequence 
-/


namespace Sequence

@[OEIS := A112447, offset := 0, derive := true, maxIndex := 100]
def A112447 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop2 (λ (_x y : ℤ) ↦ y) (λ (x _y : ℤ) ↦ x + x) x 2 1 / 3) * 2) + 1)

end Sequence

