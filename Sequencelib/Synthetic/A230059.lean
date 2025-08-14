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

# A230059 sequence 
-/

namespace Sequence

@[OEIS := A230059, offset := 1, derive := true, maxIndex := 29]
def A230059 (n : ℕ) : ℤ :=
  let x := n - 1
  (((loop (λ(x y : ℤ) ↦ (y * y)) (x) (1) - 1) / (1 + 2)) / (2 + 2))

end Sequence
