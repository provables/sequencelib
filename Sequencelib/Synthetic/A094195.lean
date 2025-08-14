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

# A094195 sequence 
-/

namespace Sequence

@[OEIS := A094195, offset := 0, derive := true, maxIndex := 100]
def A094195 (n : ℕ) : ℤ :=
  let x := n - 0
  ((1 + loop (λ(x y : ℤ) ↦ (((2 * (x + x)) + x) + y)) (x) (0)) + x)

end Sequence
