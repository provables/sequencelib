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

# A173657 sequence 
-/

namespace Sequence

@[OEIS := A173657, offset := 0, derive := true, maxIndex := 28]
def A173657 (n : ℕ) : ℤ :=
  let x := n - 0
  (2 + loop2 (λ(x y : ℤ) ↦ ((x + x) + y)) (λ(x y : ℤ) ↦ ((y + y) + y)) (x) (2) (1))

end Sequence
