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

# A062665 sequence 
-/

namespace Sequence

@[OEIS := A062665, offset := 1, derive := true, maxIndex := 2]
def A062665 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ ((1 + (2 * (x + x))) + y)) ((2 * (x + x))) (2)

end Sequence
