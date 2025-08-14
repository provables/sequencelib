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

# A128615 sequence 
-/

namespace Sequence

@[OEIS := A128615, offset := 0, derive := true, maxIndex := 100]
def A128615 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop2 (λ(x y : ℤ) ↦ (2 + y)) (λ(x y : ℤ) ↦ ((0 - x) - y)) (x) (1) (x) / (1 + 2))

end Sequence
