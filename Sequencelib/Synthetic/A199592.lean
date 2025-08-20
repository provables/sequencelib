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
# A199592 sequence 
-/


namespace Sequence

@[OEIS := A199592, offset := 0, derive := true, maxIndex := 10]
def A199592 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + loop (λ (x _y : ℤ) ↦ x * x) x (loop (λ (x _y : ℤ) ↦ 1 + (x + x)) 2 2))

end Sequence

