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

# A082028 sequence 
-/

namespace Sequence

@[OEIS := A082028, offset := 0, derive := true, maxIndex := 19]
def A082028 (n : ℕ) : ℤ :=
  let x := n - 0
  ((((x - 1) + x) * loop (λ(x y : ℤ) ↦ (1 + (x * y))) (x) (1)) + 2)

end Sequence
