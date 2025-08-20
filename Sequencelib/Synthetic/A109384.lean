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
# A109384 sequence 
-/


namespace Sequence

@[OEIS := A109384, offset := 0, derive := true, maxIndex := 7]
def A109384 (x : ℕ) : ℕ :=
  Int.toNat <| (2 * loop (λ (x _y : ℤ) ↦ x * x) (2 + x) 2)

end Sequence

