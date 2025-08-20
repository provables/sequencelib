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
# A288555 sequence 
-/


namespace Sequence

@[OEIS := A288555, offset := 0, derive := true, maxIndex := 5]
def A288555 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ (1 + ((x * x) / 2)) + y) (λ (x _y : ℤ) ↦ x) x 2 0 / 2)

end Sequence

