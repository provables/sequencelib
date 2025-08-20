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
# A127226 sequence 
-/


namespace Sequence

@[OEIS := A127226, offset := 0, derive := true, maxIndex := 100]
def A127226 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y : ℤ) ↦ y + y) (λ (x y : ℤ) ↦ (2 * (x + y)) + x) x 2 1

end Sequence

