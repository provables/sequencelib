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
# A005126 sequence 
-/


namespace Sequence

@[OEIS := A005126, offset := 0, derive := true, maxIndex := 100]
def A005126 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + (loop (λ (x _y : ℤ) ↦ x + x) x 1 + x))

end Sequence

