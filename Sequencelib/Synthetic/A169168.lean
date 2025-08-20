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
# A169168 sequence 
-/


namespace Sequence

@[OEIS := A169168, offset := 0, derive := true, maxIndex := 18]
def A169168 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ (2 * ((2 * (x + x)) + x)) + 1 / x) x 1

end Sequence

