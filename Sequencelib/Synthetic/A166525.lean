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

# A166525 sequence 
-/

namespace Sequence

@[OEIS := A166525, offset := 1, derive := true, maxIndex := 100]
def A166525 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ ((2 * ((1 + (2 + 2)) * (1 + y))) - x)) (x) (1)

end Sequence
