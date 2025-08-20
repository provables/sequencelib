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
# A070392 sequence 
-/


namespace Sequence

@[OEIS := A070392, offset := 0, derive := true, maxIndex := 100]
def A070392 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ loop (λ (x y : ℤ) ↦ y - x) x 3 + 2) x 0 + 1)

end Sequence

