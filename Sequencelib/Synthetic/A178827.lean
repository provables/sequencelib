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

# A178827 sequence 
-/

namespace Sequence

@[OEIS := A178827, offset := 1, derive := true, maxIndex := 25]
def A178827 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ (((2 * (2 * (x + x))) - (y / 2)) + y)) (x) (0)

end Sequence
