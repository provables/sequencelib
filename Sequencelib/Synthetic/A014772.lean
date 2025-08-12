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

# A014772 sequence 
-/

namespace Sequence

@[OEIS := A014772, offset := 1, derive := true, maxIndex := 26]
def A014772 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ ((((2 * (x + x)) - 2) + y) * x)) (2) ((1 + x))

end Sequence
