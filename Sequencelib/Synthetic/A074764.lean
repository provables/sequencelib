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

# A074764 sequence 
-/

namespace Sequence

@[OEIS := A074764, offset := 1, derive := true, maxIndex := 71]
def A074764 (n : ℕ) : ℤ :=
  let x := n - 1
  (1 + loop (λ(x y : ℤ) ↦ ((2 / y) + x)) (x) (x))

end Sequence
