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

# A085110 sequence 
-/

namespace Sequence

@[OEIS := A085110, offset := 1, derive := true, maxIndex := 50]
def A085110 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ ((loop (λ(x y : ℤ) ↦ (0 - x)) (y) (1) + x) * y)) ((1 + x)) (2)

end Sequence
