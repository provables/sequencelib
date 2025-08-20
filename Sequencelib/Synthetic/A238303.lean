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
# A238303 sequence 
-/


namespace Sequence

@[OEIS := A238303, offset := 0, derive := true, maxIndex := 100]
def A238303 (x : ℕ) : ℕ :=
  Int.toNat <| if (loop (λ (x y : ℤ) ↦ (x - 1) - if x ≤ 0 then 0 else y) x x + x) ≤ 0 then 1 else 2

end Sequence

