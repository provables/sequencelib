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

# A152856 sequence 
-/

namespace Sequence

@[OEIS := A152856, offset := 0, derive := true, maxIndex := 70]
def A152856 (n : ℕ) : ℤ :=
  let x := n - 0
  ((2 + loop (λ(x y : ℤ) ↦ ((y * y) + x)) (x) (2)) % (1 + (2 + 2)))

end Sequence
