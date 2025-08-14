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

# A243201 sequence 
-/

namespace Sequence

@[OEIS := A243201, offset := 0, derive := true, maxIndex := 37]
def A243201 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop (λ(x y : ℤ) ↦ (((((x * 2) + y) * y) - x) * x)) (2) (x) + 1)

end Sequence
