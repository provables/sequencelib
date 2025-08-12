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

# A152734 sequence 
-/

namespace Sequence

@[OEIS := A152734, offset := 0, derive := true, maxIndex := 100]
def A152734 (n : ℕ) : ℤ :=
  let x := n - 0
  (((x * x) - loop (λ(x y : ℤ) ↦ (x - y)) (x) (x)) * (1 + (2 + 2)))

end Sequence
