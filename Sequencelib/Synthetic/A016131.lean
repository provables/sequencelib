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
# A016131 sequence 
-/


namespace Sequence

@[OEIS := A016131, offset := 0, derive := true, maxIndex := 100]
def A016131 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ x + x) x (loop (λ (x _y : ℤ) ↦ 1 + (2 * (x + x))) x 1)

end Sequence

