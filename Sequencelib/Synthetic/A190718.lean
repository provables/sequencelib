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
# A190718 sequence 
-/


namespace Sequence

@[OEIS := A190718, offset := 0, derive := true, maxIndex := 52]
def A190718 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ x + y) (1 + y) x) ((x / 2) / 2) 1

end Sequence

