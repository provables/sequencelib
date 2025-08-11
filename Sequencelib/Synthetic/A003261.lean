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

# A003261 sequence 
-/

namespace Sequence

@[OEIS := A003261, offset := 1, derive := true, maxIndex := 100]
def A003261 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ (1 + (x + x))) ((1 + x)) (x)

end Sequence
