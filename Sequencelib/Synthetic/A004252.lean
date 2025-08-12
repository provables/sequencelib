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

# A004252 sequence 
-/

namespace Sequence

@[OEIS := A004252, offset := 1, derive := true, maxIndex := 6]
def A004252 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop (λ(x y : ℤ) ↦ ((((x * y) * y) / (2 + y)) + y)) (x) (0) + 1)

end Sequence
