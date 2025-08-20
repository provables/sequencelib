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
# A169362 sequence 
-/


namespace Sequence

@[OEIS := A169362, offset := 0, derive := true, maxIndex := 17]
def A169362 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ loop (λ (x y : ℤ) ↦ (2 + y) * x) 2 x + 1 / x) x 1

end Sequence

