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

# A055002 sequence 
-/

namespace Sequence

@[OEIS := A055002, offset := 0, derive := true, maxIndex := 13]
def A055002 (n : ℕ) : ℤ :=
  let x := n - 0
  (1 + loop (λ(x y : ℤ) ↦ ((y / if (x) ≤ 0 then (2) else ((2 + 2))) + x)) (x) (0))

end Sequence
