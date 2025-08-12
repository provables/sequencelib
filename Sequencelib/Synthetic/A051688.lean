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

# A051688 sequence 
-/

namespace Sequence

@[OEIS := A051688, offset := 0, derive := true, maxIndex := 100]
def A051688 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ ((((2 * (2 * (y + 2))) + y) * x) - x)) (x) (1)

end Sequence
