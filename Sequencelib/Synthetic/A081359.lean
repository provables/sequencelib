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

# A081359 sequence 
-/

namespace Sequence

@[OEIS := A081359, offset := 0, derive := true, maxIndex := 5]
def A081359 (n : ℕ) : ℤ :=
  let x := n - 0
  ((((x * x) + loop (λ(x y : ℤ) ↦ (x + y)) ((x - 2)) (2)) + 2) + 2)

end Sequence
