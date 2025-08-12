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

# A121471 sequence 
-/

namespace Sequence

@[OEIS := A121471, offset := 1, derive := true, maxIndex := 49]
def A121471 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop (λ(x y : ℤ) ↦ (((1 + 2) * (y + (y / 2))) + x)) (x) (1) - x)

end Sequence
