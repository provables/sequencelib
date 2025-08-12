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

# A304487 sequence 
-/

namespace Sequence

@[OEIS := A304487, offset := 1, derive := true, maxIndex := 43]
def A304487 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop (λ(x y : ℤ) ↦ (((2 * (y * y)) + x) + y)) (x) (1) + (x / 2))

end Sequence
