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
# A195160 sequence 
-/


namespace Sequence

@[OEIS := A195160, offset := 0, derive := true, maxIndex := 100]
def A195160 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop (λ (x _y : ℤ) ↦ (x / 2) + x) 2 (y * y) - x) x 0

end Sequence

