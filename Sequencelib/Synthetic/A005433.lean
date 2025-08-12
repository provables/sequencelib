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

# A005433 sequence 
-/

namespace Sequence

@[OEIS := A005433, offset := 0, derive := true, maxIndex := 6]
def A005433 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop (λ(x y : ℤ) ↦ loop (λ(x y : ℤ) ↦ ((x + x) + x)) (y) (1)) ((x - 2)) (x) + 1)

end Sequence
