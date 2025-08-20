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
# A001971 sequence 
-/


namespace Sequence

@[OEIS := A001971, offset := 0, derive := true, maxIndex := 61]
def A001971 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y : ℤ) ↦ (y / 2) + x) x 1 / 2)

end Sequence

