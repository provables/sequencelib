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
# A217473 sequence 
-/


namespace Sequence

@[OEIS := A217473, offset := 0, derive := true, maxIndex := 13]
def A217473 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop2 (λ (x y : ℤ) ↦ x + y) (λ (x _y : ℤ) ↦ x) (y + y) 1 2 * x) x 1

end Sequence

