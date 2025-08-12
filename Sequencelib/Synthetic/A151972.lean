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

# A151972 sequence 
-/

namespace Sequence

@[OEIS := A151972, offset := 1, derive := true, maxIndex := 61]
def A151972 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ ((loop (λ(x y : ℤ) ↦ (x + y)) (y) (0) * (x / 2)) + x)) (2) (x)

end Sequence
