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

# A121389 sequence 
-/

namespace Sequence

@[OEIS := A121389, offset := 0, derive := true, maxIndex := 11]
def A121389 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop2 (λ(x y : ℤ) ↦ ((2 * (y + y)) + y)) (λ(x y : ℤ) ↦ (x * y)) (x) (1) (2) - 1)

end Sequence
