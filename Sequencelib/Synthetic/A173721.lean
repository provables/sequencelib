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

# A173721 sequence 
-/

namespace Sequence

@[OEIS := A173721, offset := 0, derive := true, maxIndex := 51]
def A173721 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop (λ(x y : ℤ) ↦ ((y * y) + x)) (x) (2) / (1 + (2 + (2 + 2))))

end Sequence
