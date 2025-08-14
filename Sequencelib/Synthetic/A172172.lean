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

# A172172 sequence 
-/

namespace Sequence

@[OEIS := A172172, offset := 0, derive := true, maxIndex := 100]
def A172172 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop2 (λ(x y : ℤ) ↦ (x + y)) (λ(x y : ℤ) ↦ ((2 * (2 + 2)) + x)) (x) (1) (1) - 1)

end Sequence
