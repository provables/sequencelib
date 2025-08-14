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

# A003622 sequence 
-/

namespace Sequence

@[OEIS := A003622, offset := 1, derive := true, maxIndex := 100]
def A003622 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop (λ(x y : ℤ) ↦ (((y * y) / (2 + x)) + y)) ((1 + x)) (0) + x)

end Sequence
