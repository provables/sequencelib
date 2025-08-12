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

# A071930 sequence 
-/

namespace Sequence

@[OEIS := A071930, offset := 1, derive := true, maxIndex := 100]
def A071930 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ ((x * x) - x)) (1) (loop (λ(x y : ℤ) ↦ (0 - (x + x))) (x) (1))

end Sequence
