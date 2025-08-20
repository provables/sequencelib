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
# A096884 sequence 
-/


namespace Sequence

@[OEIS := A096884, offset := 0, derive := true, maxIndex := 16]
def A096884 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ loop (λ (x _y : ℤ) ↦ 1 + (x * x)) 2 3 * x) x 1

end Sequence

