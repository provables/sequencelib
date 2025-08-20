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
# A049211 sequence 
-/


namespace Sequence

@[OEIS := A049211, offset := 0, derive := true, maxIndex := 100]
def A049211 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ (loop (λ (x _y : ℤ) ↦ (x + x) + x) 2 x * y) - x) x 1

end Sequence

