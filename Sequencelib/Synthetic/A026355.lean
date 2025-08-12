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

# A026355 sequence 
-/

namespace Sequence

@[OEIS := A026355, offset := 0, derive := true, maxIndex := 69]
def A026355 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop (λ(x y : ℤ) ↦ (((x * y) / (y + (1 + x))) + y)) (x) (0) + 1)

end Sequence
