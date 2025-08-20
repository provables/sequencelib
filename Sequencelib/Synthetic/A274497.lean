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
# A274497 sequence 
-/


namespace Sequence

@[OEIS := A274497, offset := 0, derive := true, maxIndex := 31]
def A274497 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ x + x) x (x / 2) / 2)

end Sequence

