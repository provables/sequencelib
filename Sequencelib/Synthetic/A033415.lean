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

# A033415 sequence 
-/

namespace Sequence

@[OEIS := A033415, offset := 1, derive := true, maxIndex := 92]
def A033415 (n : ℕ) : ℤ :=
  let x := n - 1
  (((2 * loop (λ(x y : ℤ) ↦ ((x + y) * x)) (2) (2)) - 1) / (1 + x))

end Sequence
