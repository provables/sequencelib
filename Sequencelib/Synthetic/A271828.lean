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

# A271828 sequence 
-/

namespace Sequence

@[OEIS := A271828, offset := 1, derive := true, maxIndex := 42]
def A271828 (n : ℕ) : ℤ :=
  let x := n - 1
  ((loop (λ(x y : ℤ) ↦ ((x + y) + y)) (((x - 2) + x)) (1) * x) + 1)

end Sequence
