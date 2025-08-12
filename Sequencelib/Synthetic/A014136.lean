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

# A014136 sequence 
-/

namespace Sequence

@[OEIS := A014136, offset := 1, derive := true, maxIndex := 2]
def A014136 (n : ℕ) : ℤ :=
  let x := n - 1
  ((loop (λ(x y : ℤ) ↦ ((x + y) * x)) ((1 + x)) (2) * (1 + 2)) * 2)

end Sequence
