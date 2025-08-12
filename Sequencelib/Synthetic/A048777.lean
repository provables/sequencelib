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

# A048777 sequence 
-/

namespace Sequence

@[OEIS := A048777, offset := 0, derive := true, maxIndex := 100]
def A048777 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop2 (λ(x y : ℤ) ↦ ((2 * (2 + x)) + y)) (λ(x y : ℤ) ↦ (1 + x)) (x) (1) (0) - x)

end Sequence
