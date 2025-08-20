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
# A144745 sequence 
-/


namespace Sequence

@[OEIS := A144745, offset := 0, derive := true, maxIndex := 7]
def A144745 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ ((x * x) - 2) + x) x (2 * 4) + 1)

end Sequence

