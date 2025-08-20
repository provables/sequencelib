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
# A266286 sequence 
-/


namespace Sequence

@[OEIS := A266286, offset := 0, derive := true, maxIndex := 100]
def A266286 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y : ℤ) ↦ 1 + y) (λ (x _y : ℤ) ↦ x) x x 1

end Sequence

