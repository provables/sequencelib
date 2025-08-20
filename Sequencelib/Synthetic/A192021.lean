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
# A192021 sequence 
-/


namespace Sequence

@[OEIS := A192021, offset := 0, derive := true, maxIndex := 25]
def A192021 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ x + x) x (loop (λ (x _y : ℤ) ↦ (x - 1) + x) x x) / 2)

end Sequence

