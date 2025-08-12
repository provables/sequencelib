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

# A083812 sequence 
-/

namespace Sequence

@[OEIS := A083812, offset := 1, derive := true, maxIndex := 19]
def A083812 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop (λ(x y : ℤ) ↦ (2 * ((2 * (x + x)) + x))) ((1 + x)) (2) - 2)

end Sequence
