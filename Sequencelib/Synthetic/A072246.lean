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

# A072246 sequence 
-/

namespace Sequence

@[OEIS := A072246, offset := 1, derive := true, maxIndex := 6]
def A072246 (n : ℕ) : ℤ :=
  let x := n - 1
  (((loop (λ(x y : ℤ) ↦ ((x / 2) * x)) (2) (x) / (1 + 2)) + 1) + x)

end Sequence
