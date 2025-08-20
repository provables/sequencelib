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
# A067966 sequence 
-/


namespace Sequence

@[OEIS := A067966, offset := 0, derive := true, maxIndex := 50]
def A067966 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ x * y) (λ (_x y : ℤ) ↦ y) x 1 (loop2 (λ (x y : ℤ) ↦ x + y) (λ (x _y : ℤ) ↦ x) x 1 1)

end Sequence

