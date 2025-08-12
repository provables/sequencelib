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

# A209356 sequence 
-/

namespace Sequence

@[OEIS := A209356, offset := 3, derive := true, maxIndex := 13]
def A209356 (n : ℕ) : ℤ :=
  let x := n - 3
  (1 + loop (λ(x y : ℤ) ↦ (((y - x) / (1 + 2)) + x)) ((1 + 2)) (x))

end Sequence
