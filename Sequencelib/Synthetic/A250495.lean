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
# A250495 sequence 
-/


namespace Sequence

@[OEIS := A250495, offset := 0]
def A250495 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y : ℤ) ↦ y) (λ (x y : ℤ) ↦ x + y) (loop2 (λ (x y : ℤ) ↦ x * y) (λ (_x y : ℤ) ↦ y) x 1 x) 0 1

end Sequence

