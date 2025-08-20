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
# A332884 sequence 
-/


namespace Sequence

@[OEIS := A332884, offset := 1, derive := true, maxIndex := 52]
def A332884 (n : ℕ) : ℤ :=
  let x := n - 1
  (((loop (λ (x _y : ℤ) ↦ 2 * (2 + x)) 2 2 - x) * (1 + x)) - 1)

end Sequence

