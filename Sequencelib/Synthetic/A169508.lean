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
# A169508 sequence 
-/


namespace Sequence

@[OEIS := A169508, offset := 0, derive := true, maxIndex := 17]
def A169508 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (loop (λ (x _y : ℤ) ↦ x * x) 2 2 - y) * x) (λ (_x _y : ℤ) ↦ 2) x 1 1

end Sequence

