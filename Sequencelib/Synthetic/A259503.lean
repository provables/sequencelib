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

# A259503 sequence 
-/

namespace Sequence

@[OEIS := A259503, offset := 1, derive := true, maxIndex := 7]
def A259503 (n : ℕ) : ℤ :=
  let x := n - 1
  ((loop (λ(x y : ℤ) ↦ ((2 + x) * x)) (((x - 1) - 2)) (1) / 2) + x)

end Sequence
