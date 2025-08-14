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

# A270889 sequence 
-/

namespace Sequence

@[OEIS := A270889, offset := 0, derive := true, maxIndex := 50]
def A270889 (n : ℕ) : ℤ :=
  let x := n - 0
  (1 + loop2 (λ(x y : ℤ) ↦ (1 + y)) (λ(x y : ℤ) ↦ ((x + y) + y)) ((x + x)) (2) (1))

end Sequence
