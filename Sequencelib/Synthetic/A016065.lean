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

# A016065 sequence 
-/

namespace Sequence

@[OEIS := A016065, offset := 0, derive := true, maxIndex := 50]
def A016065 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ (loop (λ(x y : ℤ) ↦ ((1 + y) * (x * y))) (y) (1) + x)) (x) (1)

end Sequence
