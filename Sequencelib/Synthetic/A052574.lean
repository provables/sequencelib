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
# A052574 sequence 
-/


namespace Sequence

@[OEIS := A052574, offset := 0, derive := true, maxIndex := 18]
def A052574 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y : ℤ) ↦ y) (λ (x y : ℤ) ↦ x + y) (x + x) (loop (λ (x y : ℤ) ↦ x * y) x 1) 0

end Sequence

