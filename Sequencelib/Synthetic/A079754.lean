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

# A079754 sequence 
-/

namespace Sequence

@[OEIS := A079754, offset := 3, derive := true, maxIndex := 19]
def A079754 (n : ℕ) : ℤ :=
  let x := n - 3
  (loop (λ(x y : ℤ) ↦ ((((x + y) * (1 + y)) + x) + x)) (x) (0) / 2)

end Sequence
