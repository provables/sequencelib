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

# A021554 sequence 
-/

namespace Sequence

@[OEIS := A021554, offset := 0, derive := true, maxIndex := 99]
def A021554 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ if ((x % 2)) ≤ 0 then (1) else ((2 * (2 + 2)))) ((x - 1)) (0)

end Sequence
