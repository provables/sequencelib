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

# A109678 sequence 
-/

namespace Sequence

@[OEIS := A109678, offset := 1, derive := true, maxIndex := 10]
def A109678 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ ((y * y) + x)) ((1 + x)) (0)


end Sequence
