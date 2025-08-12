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

# A143248 sequence 
-/

namespace Sequence

@[OEIS := A143248, offset := 1, derive := true, maxIndex := 14]
def A143248 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ loop (λ(x y : ℤ) ↦ ((1 + y) * (x * y))) ((y + 1)) (1)) (x) (0)

end Sequence
