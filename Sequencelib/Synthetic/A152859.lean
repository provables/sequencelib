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
# A152859 sequence 
-/


namespace Sequence

@[OEIS := A152859, offset := 0]
def A152859 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop2 (λ (x y : ℤ) ↦ (2 * (x * y)) - x) (λ (_x y : ℤ) ↦ y) x 1 y) x x

end Sequence

