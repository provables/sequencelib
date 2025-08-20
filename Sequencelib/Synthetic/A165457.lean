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
# A165457 sequence 
-/


namespace Sequence

@[OEIS := A165457, offset := 0, derive := true, maxIndex := 100]
def A165457 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ (loop (λ (x _y : ℤ) ↦ 2 + (x + x)) 2 y * y) * x) x 1

end Sequence

