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
# A083232 sequence 
-/


namespace Sequence

@[OEIS := A083232, offset := 0, derive := true, maxIndex := 20]
def A083232 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ (3 * ((x - 1) + x)) + x) x 2 / 2)

end Sequence

