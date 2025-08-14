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

# A263226 sequence 
-/

namespace Sequence

@[OEIS := A263226, offset := 0, derive := true, maxIndex := 43]
def A263226 (n : ℕ) : ℤ :=
  let x := n - 0
  ((loop (λ(x y : ℤ) ↦ ((((x - 2) + x) * y) + x)) (2) (x) * x) + x)

end Sequence
