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

# A229878 sequence 
-/

namespace Sequence

@[OEIS := A229878, offset := 3, derive := true, maxIndex := 6]
def A229878 (n : ℕ) : ℤ :=
  let x := n - 3
  (loop (λ(x y : ℤ) ↦ (y - (2 % y))) (x) (1) - 1)

end Sequence
