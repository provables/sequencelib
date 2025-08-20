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
# A019557 sequence 
-/


namespace Sequence

@[OEIS := A019557, offset := 0, derive := true, maxIndex := 60]
def A019557 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (_x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ (y - x) * 3) 2 y * 2) x 1

end Sequence

