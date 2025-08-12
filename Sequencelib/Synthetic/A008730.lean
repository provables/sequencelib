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

# A008730 sequence 
-/

namespace Sequence

@[OEIS := A008730, offset := 0, derive := true, maxIndex := 100]
def A008730 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop (λ(x y : ℤ) ↦ (loop (λ(x y : ℤ) ↦ (x / (2 + y))) (2) (y) + x)) (x) (1) + x)

end Sequence
