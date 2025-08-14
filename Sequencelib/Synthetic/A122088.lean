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

# A122088 sequence 
-/

namespace Sequence

@[OEIS := A122088, offset := 1, derive := true, maxIndex := 66]
def A122088 (n : ℕ) : ℤ :=
  let x := n - 1
  ((((1 + 2) * loop (λ(x y : ℤ) ↦ ((2 + y) - x)) (x) (0)) + 1) + x)

end Sequence
