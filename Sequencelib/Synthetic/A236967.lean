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
# A236967 sequence 
-/


namespace Sequence

@[OEIS := A236967, offset := 0, derive := true, maxIndex := 26]
def A236967 (x : ℕ) : ℕ :=
  Int.toNat <| if x ≤ 0 then 1 else 2 * (2 * loop (λ (x _y : ℤ) ↦ (x + x) + x) x x)

end Sequence

