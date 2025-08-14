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

# A170082 sequence 
-/

namespace Sequence

@[OEIS := A170082, offset := 0, derive := true, maxIndex := 16]
def A170082 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ (loop (λ(x y : ℤ) ↦ (x * y)) ((2 + 2)) (x) + (1 / x))) (x) (1)

end Sequence
