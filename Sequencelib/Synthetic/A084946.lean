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
# A084946 sequence 
-/


namespace Sequence

@[OEIS := A084946, offset := 0, derive := true, maxIndex := 10]
def A084946 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ x * y) (λ (_x y : ℤ) ↦ 1 + (2 + (2 + y))) x 1 2

end Sequence

