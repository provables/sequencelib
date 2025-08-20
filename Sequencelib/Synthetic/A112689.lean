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
# A112689 sequence 
-/


namespace Sequence

@[OEIS := A112689, offset := 0, derive := true, maxIndex := 100]
def A112689 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y : ℤ) ↦ (x % 2) + y) x 1 / 2) - x / 3)

end Sequence

