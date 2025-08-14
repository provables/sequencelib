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

# A010014 sequence 
-/

namespace Sequence

@[OEIS := A010014, offset := 0, derive := true, maxIndex := 100]
def A010014 (n : ℕ) : ℤ :=
  let x := n - 0
  ((loop (λ(x y : ℤ) ↦ (x * y)) ((2 + 2)) (x) * x) + if (x) ≤ 0 then (1) else (2))

end Sequence
