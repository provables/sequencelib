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
# A199313 sequence 
-/


namespace Sequence

@[OEIS := A199313, offset := 0, derive := true, maxIndex := 100]
def A199313 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y : ℤ) ↦ ((2 + (2 % y)) * x) + x) (2 + x) 1 + 1)

end Sequence

