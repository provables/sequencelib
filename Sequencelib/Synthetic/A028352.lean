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

# A028352 sequence 
-/

namespace Sequence

@[OEIS := A028352, offset := 1, derive := true, maxIndex := 100]
def A028352 (n : ℕ) : ℤ :=
  let x := n - 1
  ((loop (λ(x y : ℤ) ↦ ((x - 1) % (2 + (2 * y)))) (x) (0) * 2) + 2)

end Sequence
