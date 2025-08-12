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

# A053486 sequence 
-/

namespace Sequence

@[OEIS := A053486, offset := 0, derive := true, maxIndex := 50]
def A053486 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ ((x * y) + loop (λ(x y : ℤ) ↦ ((x + x) + x)) (y) (1))) (x) (1)

end Sequence
