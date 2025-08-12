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

# A212555 sequence 
-/

namespace Sequence

@[OEIS := A212555, offset := 0, derive := true, maxIndex := 11]
def A212555 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ ((y / (1 + 2)) + x)) (x) (x)

end Sequence
