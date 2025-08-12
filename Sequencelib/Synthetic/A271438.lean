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

# A271438 sequence 
-/

namespace Sequence

@[OEIS := A271438, offset := 1, derive := true, maxIndex := 3]
def A271438 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ (loop (λ(x y : ℤ) ↦ (1 + (x * y))) ((2 + y)) (x) + y)) (x) (1)

end Sequence
