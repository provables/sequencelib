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
# A099754 sequence 
-/


namespace Sequence

@[OEIS := A099754, offset := 0, derive := true, maxIndex := 100]
def A099754 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (x + x) + y) (λ (_x y : ℤ) ↦ ((1 + y) + y) + y) x 2 0

end Sequence

