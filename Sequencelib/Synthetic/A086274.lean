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

# A086274 sequence 
-/

namespace Sequence

@[OEIS := A086274, offset := 1, derive := true, maxIndex := 39]
def A086274 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ ((((2 * ((x - y) + x)) / y) + x) + y)) (x) (1)

end Sequence
