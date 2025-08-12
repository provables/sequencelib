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

# A008618 sequence 
-/

namespace Sequence

@[OEIS := A008618, offset := 0, derive := true, maxIndex := 100]
def A008618 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ ((loop (λ(x y : ℤ) ↦ (x / (1 + 2))) (2) (y) + 1) - x)) (x) (1)

end Sequence
