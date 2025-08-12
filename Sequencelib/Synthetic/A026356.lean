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

# A026356 sequence 
-/

namespace Sequence

@[OEIS := A026356, offset := 1, derive := true, maxIndex := 100]
def A026356 (n : ℕ) : ℤ :=
  let x := n - 1
  ((loop (λ(x y : ℤ) ↦ (((y * y) / (2 + x)) + y)) (x) (0) + 2) + x)

end Sequence
