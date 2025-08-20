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
# A070333 sequence 
-/


namespace Sequence

@[OEIS := A070333, offset := 0, derive := true, maxIndex := 45]
def A070333 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y : ℤ) ↦ (((2 + y) * y) / 3) + x) x 1 + x)

end Sequence

