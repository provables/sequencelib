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

# A216414 sequence 
-/

namespace Sequence

@[OEIS := A216414, offset := 3, derive := true, maxIndex := 100]
def A216414 (n : ℕ) : ℤ :=
  let x := n - 3
  (loop (λ(x y : ℤ) ↦ (((0 - ((x + x) + x)) / y) - x)) (x) (1) - 1)

end Sequence
