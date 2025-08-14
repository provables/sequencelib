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

# A117576 sequence 
-/

namespace Sequence

@[OEIS := A117576, offset := 0, derive := true, maxIndex := 41]
def A117576 (n : ℕ) : ℤ :=
  let x := n - 0
  ((1 + loop2 (λ(x y : ℤ) ↦ y) (λ(x y : ℤ) ↦ ((0 - x) - x)) (x) (2) (1)) / (1 + 2))

end Sequence
