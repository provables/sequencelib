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

# A056830 sequence 
-/

namespace Sequence

@[OEIS := A056830, offset := 0, derive := true, maxIndex := 19]
def A056830 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ ((2 * ((2 * (x + x)) + x)) + (y % 2))) (x) (0)

end Sequence
