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

# A089709 sequence 
-/

namespace Sequence

@[OEIS := A089709, offset := 1, derive := true, maxIndex := 15]
def A089709 (n : ℕ) : ℤ :=
  let x := n - 1
  ((loop2 (λ(x y : ℤ) ↦ ((2 + y) * x)) (λ(x y : ℤ) ↦ (y + y)) (x) (1) (1) + 1) / 2)

end Sequence
