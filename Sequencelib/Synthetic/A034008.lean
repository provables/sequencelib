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
# A034008 sequence 
-/


namespace Sequence

@[OEIS := A034008, offset := 0, derive := true, maxIndex := 100]
def A034008 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (_x y : ℤ) ↦ y) (λ (_x y : ℤ) ↦ y + y) x 2 1 / 2)

end Sequence

