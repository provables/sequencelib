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
# A010054 sequence 
-/


namespace Sequence

@[OEIS := A010054, offset := 0, derive := true, maxIndex := 100]
def A010054 (x : ℕ) : ℕ :=
  Int.toNat <| if (loop (λ (x y : ℤ) ↦ (x - 1) - if x ≤ 0 then 0 else y) x x + x) ≤ 0 then 1 else 0

end Sequence

