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

# A257088 sequence 
-/

namespace Sequence

@[OEIS := A257088, offset := 0, derive := true, maxIndex := 100]
def A257088 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop (λ(x y : ℤ) ↦ if (x) ≤ 0 then (y) else (0)) (x) (1) + x)

end Sequence
