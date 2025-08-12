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

# A099941 sequence 
-/

namespace Sequence

@[OEIS := A099941, offset := 0, derive := true, maxIndex := 9]
def A099941 (n : ℕ) : ℤ :=
  let x := n - 0
  ((1 + loop (λ(x y : ℤ) ↦ (2 * (((2 + x) * x) - 2))) (x) (1)) * 2)

end Sequence
