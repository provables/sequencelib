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
# A040071 sequence 
-/


namespace Sequence

@[OEIS := A040071, offset := 0, derive := true, maxIndex := 100]
def A040071 (x : ℕ) : ℕ :=
  Int.toNat <| (if (x % 2) ≤ 0 then loop (λ (x _y : ℤ) ↦ x * x) 2 2 else 1 / if x ≤ 0 then 2 else 1)

end Sequence

