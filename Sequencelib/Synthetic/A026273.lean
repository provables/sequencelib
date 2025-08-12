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

# A026273 sequence 
-/

namespace Sequence

@[OEIS := A026273, offset := 1, derive := true, maxIndex := 62]
def A026273 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop (λ(x y : ℤ) ↦ (((y * y) / (2 + x)) + y)) ((2 + x)) (0) - 2)

end Sequence
