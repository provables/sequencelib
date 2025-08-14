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

# A204545 sequence 
-/

namespace Sequence

@[OEIS := A204545, offset := 1, derive := true, maxIndex := 99]
def A204545 (n : ℕ) : ℤ :=
  let x := n - 1
  ((1 + loop (λ(x y : ℤ) ↦ ((x - 1) - if (x) ≤ 0 then (0) else (y))) (x) (x)) % 2)

end Sequence
