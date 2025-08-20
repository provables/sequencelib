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
# A158666 sequence 
-/


namespace Sequence

@[OEIS := A158666, offset := 0, derive := true, maxIndex := 100]
def A158666 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop (λ (x y : ℤ) ↦ ((x * x) + x) + y) 2 2 * x) * x) + 1)

end Sequence

