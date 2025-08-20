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
# A217238 sequence 
-/


namespace Sequence

@[OEIS := A217238, offset := 0, derive := true, maxIndex := 50]
def A217238 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ (x * y) * y) y 1 + x * y) x 0

end Sequence

