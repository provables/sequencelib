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
# A020707 sequence 
-/


namespace Sequence

@[OEIS := A020707, offset := 0, derive := true, maxIndex := 100]
def A020707 (x : ℕ) : ℕ :=
  Int.toNat <| (2 * loop (λ (x _y : ℤ) ↦ x + x) x 2)

end Sequence

