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
# A218733 sequence 
-/


namespace Sequence

@[OEIS := A218733, offset := 0, derive := true, maxIndex := 100]
def A218733 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ 1 + loop (λ (x y : ℤ) ↦ (2 + (2 + y)) * x) 2 x) x 0

end Sequence

