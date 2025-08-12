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

# A112594 sequence 
-/

namespace Sequence

@[OEIS := A112594, offset := 0, derive := true, maxIndex := 71]
def A112594 (n : ℕ) : ℤ :=
  let x := n - 0
  (((2 * loop (λ(x y : ℤ) ↦ ((y / (x * x)) + x)) (x) (1)) - 2) + x)

end Sequence
