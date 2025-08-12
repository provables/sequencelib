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

# A145070 sequence 
-/

namespace Sequence

@[OEIS := A145070, offset := 1, derive := true, maxIndex := 30]
def A145070 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ ((loop (λ(x y : ℤ) ↦ (x + x)) (y) (1) + x) + y)) ((1 + x)) (0)

end Sequence
