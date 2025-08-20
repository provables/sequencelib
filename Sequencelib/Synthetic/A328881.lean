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
# A328881 sequence 
-/


namespace Sequence

@[OEIS := A328881, offset := 0, derive := true, maxIndex := 100]
def A328881 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + loop2 (λ (x y : ℤ) ↦ y - x) (λ (_x y : ℤ) ↦ y + y) x 2 1) / 3)

end Sequence

