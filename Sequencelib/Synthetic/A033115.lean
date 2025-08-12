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

# A033115 sequence 
-/

namespace Sequence

@[OEIS := A033115, offset := 1, derive := true, maxIndex := 22]
def A033115 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ (1 + (((2 * (x + x)) - (y % 2)) + x))) (x) (1)

end Sequence
