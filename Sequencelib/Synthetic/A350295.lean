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

# A350295 sequence 
-/

namespace Sequence

@[OEIS := A350295, offset := 3, derive := true, maxIndex := 100]
def A350295 (n : ℕ) : ℤ :=
  let x := n - 3
  (loop (λ(x y : ℤ) ↦ (2 + (x + y))) ((x - 2)) (((2 + x) * 2)) + 2)

end Sequence
