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
# A219161 sequence 
-/


namespace Sequence

@[OEIS := A219161, offset := 0, derive := true, maxIndex := 10]
def A219161 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ (((x * x) - 2) * x) - x) x (1 + 4)

end Sequence

