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
# A040555 sequence 
-/


namespace Sequence

@[OEIS := A040555, offset := 0, derive := true, maxIndex := 63]
def A040555 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ x + x) (loop (λ (x _y : ℤ) ↦ if x ≤ 0 then 2 else 0) x 1 + 2) 3

end Sequence

