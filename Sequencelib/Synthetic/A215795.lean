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

# A215795 sequence 
-/

namespace Sequence

@[OEIS := A215795, offset := 1, derive := true, maxIndex := 5]
def A215795 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ ((x * y) + y)) ((x - 2)) (x)

end Sequence
