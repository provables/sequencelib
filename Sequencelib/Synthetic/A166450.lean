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

# A166450 sequence 
-/

namespace Sequence

@[OEIS := A166450, offset := 1, derive := true, maxIndex := 34]
def A166450 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ(x y : ℤ) ↦ ((y + y) + y)) (λ(x y : ℤ) ↦ x) (x) (1) (2)

end Sequence
