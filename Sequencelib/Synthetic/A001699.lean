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

# A001699 sequence 
-/

namespace Sequence

@[OEIS := A001699, offset := 0, derive := true, maxIndex := 10]
def A001699 (n : ℕ) : ℤ :=
  let x := n - 0
  loop2 (λ(x y : ℤ) ↦ (x * y)) (λ(x y : ℤ) ↦ ((x + y) + (x * y))) (x) (1) (1)

end Sequence
