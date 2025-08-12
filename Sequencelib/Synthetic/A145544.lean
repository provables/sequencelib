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

# A145544 sequence 
-/

namespace Sequence

@[OEIS := A145544, offset := 0, derive := true, maxIndex := 25]
def A145544 (n : ℕ) : ℤ :=
  let x := n - 0
  loop2 (λ(x y : ℤ) ↦ ((2 * (x + y)) + x)) (λ(x y : ℤ) ↦ (2 * (y + y))) (x) (0) (2)

end Sequence
