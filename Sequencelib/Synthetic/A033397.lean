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

# A033397 sequence 
-/

namespace Sequence

@[OEIS := A033397, offset := 1, derive := true, maxIndex := 92]
def A033397 (n : ℕ) : ℤ :=
  let x := n - 1
  ((1 + (2 * loop (λ(x y : ℤ) ↦ (2 + (x * x))) (2) (2))) / (1 + x))

end Sequence
