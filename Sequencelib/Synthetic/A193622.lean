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

# A193622 sequence 
-/

namespace Sequence

@[OEIS := A193622, offset := 1, derive := true, maxIndex := 6]
def A193622 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ ((x - (y / 2)) + y)) (x) (1)

end Sequence
