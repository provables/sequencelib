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

# A004971 sequence 
-/

namespace Sequence

@[OEIS := A004971, offset := 0, derive := true, maxIndex := 29]
def A004971 (n : ℕ) : ℤ :=
  let x := n - 0
  ((2 + loop (λ(x y : ℤ) ↦ ((2 + (2 + x)) * x)) ((1 + 2)) (1)) * x)

end Sequence
