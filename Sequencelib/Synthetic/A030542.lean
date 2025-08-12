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

# A030542 sequence 
-/

namespace Sequence

@[OEIS := A030542, offset := 0, derive := true, maxIndex := 28]
def A030542 (n : ℕ) : ℤ :=
  let x := n - 0
  if ((loop (λ(x y : ℤ) ↦ ((x * x) + y)) (2) (2) - x)) ≤ 0 then (1) else ((2 + x))

end Sequence
