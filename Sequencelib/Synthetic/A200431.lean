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

# A200431 sequence 
-/

namespace Sequence

@[OEIS := A200431, offset := 1, derive := true, maxIndex := 100]
def A200431 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ ((((1 + y) * (y + y)) + x) + y)) ((x + x)) (x)

end Sequence
