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

# A261766 sequence 
-/

namespace Sequence

@[OEIS := A261766, offset := 0, derive := true, maxIndex := 23]
def A261766 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop (λ(x y : ℤ) ↦ (if (x) ≤ 0 then (1) else ((x * y)) - x)) (x) (1) * (1 + x))

end Sequence
