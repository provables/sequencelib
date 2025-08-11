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

# A077585 sequence 
-/

namespace Sequence

@[OEIS := A077585, offset := 0, derive := true, maxIndex := 9]
def A077585 (n : ℕ) : ℤ :=
  let x := n - 0
  ((loop (λ(x y : ℤ) ↦ (x * x)) (x) (2) / 2) - 1)

end Sequence
