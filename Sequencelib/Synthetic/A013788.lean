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
# A013788 sequence 
-/


namespace Sequence

@[OEIS := A013788, offset := 0, derive := true, maxIndex := 11]
def A013788 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ x + x) (2 + loop (λ (x y : ℤ) ↦ (2 + y) * x) 2 x) 2

end Sequence

