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
# A250362 sequence 
-/


namespace Sequence

@[OEIS := A250362, offset := 1, derive := true, maxIndex := 100]
def A250362 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x _y : ℤ) ↦ x * x) 2 (2 + x) - x) + if x ≤ 0 then 0 else 1)

end Sequence

