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

# A033389 sequence 
-/

namespace Sequence

@[OEIS := A033389, offset := 1, derive := true, maxIndex := 92]
def A033389 (n : ℕ) : ℤ :=
  let x := n - 1
  ((1 + loop (λ(x y : ℤ) ↦ (2 + (2 + (x * x)))) (2) (2)) / (1 + x))

end Sequence
