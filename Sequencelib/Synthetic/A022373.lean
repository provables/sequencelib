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
# A022373 sequence 
-/


namespace Sequence

@[OEIS := A022373, offset := 0, derive := true, maxIndex := 100]
def A022373 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ x + y) (λ (x _y : ℤ) ↦ x) x 2 (loop (λ (x _y : ℤ) ↦ 2 * (2 + x)) 2 2)

end Sequence

