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
# A168635 sequence 
-/


namespace Sequence

@[OEIS := A168635, offset := 0, derive := true, maxIndex := 100]
def A168635 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop2 (λ (x y : ℤ) ↦ (x * x) * y) (λ (x _y : ℤ) ↦ x) 2 x x * (1 + x)) / 2)

end Sequence

