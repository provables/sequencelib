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
# A129346 sequence 
-/


namespace Sequence

@[OEIS := A129346, offset := 0, derive := true, maxIndex := 100]
def A129346 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (x + x) + y) (λ (x _y : ℤ) ↦ x) x (2 * (2 - (x % 2))) 1

end Sequence

