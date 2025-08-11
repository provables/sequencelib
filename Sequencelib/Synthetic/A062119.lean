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

# A062119 sequence 
-/

namespace Sequence

@[OEIS := A062119, offset := 1, derive := true, maxIndex := 100]
def A062119 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ ((x * y) + x)) (x) (x)

end Sequence
