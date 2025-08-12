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

# A335927 sequence 
-/

namespace Sequence

@[OEIS := A335927, offset := 1, derive := true, maxIndex := 29]
def A335927 (n : ℕ) : ℤ :=
  let x := n - 1
  ((1 + loop (λ(x y : ℤ) ↦ (2 * loop (λ(x y : ℤ) ↦ (x + y)) (y) (x))) (x) (1)) / 2)

end Sequence
