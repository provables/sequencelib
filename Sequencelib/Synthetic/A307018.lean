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
# A307018 sequence 
-/


namespace Sequence

@[OEIS := A307018, offset := 0, derive := true, maxIndex := 67]
def A307018 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ x + y) (y / 3) 0 - x) x 0

end Sequence

