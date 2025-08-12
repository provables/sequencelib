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

# A052277 sequence 
-/

namespace Sequence

@[OEIS := A052277, offset := 0, derive := true, maxIndex := 11]
def A052277 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ (((2 * (x * y)) + x) * (y + 1))) ((x * 2)) (1)

end Sequence
