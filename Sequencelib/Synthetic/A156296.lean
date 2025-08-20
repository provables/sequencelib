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
# A156296 sequence 
-/


namespace Sequence

@[OEIS := A156296, offset := 0, derive := true, maxIndex := 50]
def A156296 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop (λ (x _y : ℤ) ↦ ((x - 1) + x) + x) y 1 * x) x 1

end Sequence

