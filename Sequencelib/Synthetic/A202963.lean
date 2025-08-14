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

# A202963 sequence 
-/

namespace Sequence

@[OEIS := A202963, offset := 1, derive := true, maxIndex := 100]
def A202963 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop (λ(x y : ℤ) ↦ ((2 * ((1 + 2) * (y * y))) - x)) (x) (1) + 1)

end Sequence
