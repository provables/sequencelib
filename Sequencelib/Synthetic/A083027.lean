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

# A083027 sequence 
-/

namespace Sequence

@[OEIS := A083027, offset := 0, derive := true, maxIndex := 25]
def A083027 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ ((((1 + ((x / 2) / 2)) + y) / 2) + y)) (x) (0)

end Sequence
