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

# A026532 sequence 
-/

namespace Sequence

@[OEIS := A026532, offset := 1, derive := true, maxIndex := 31]
def A026532 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ ((2 + (y % 2)) * x)) (x) (1)

end Sequence
