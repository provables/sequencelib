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

# A026567 sequence 
-/

namespace Sequence

@[OEIS := A026567, offset := 0, derive := true, maxIndex := 100]
def A026567 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop2 (λ(x y : ℤ) ↦ (2 + ((y + y) + y))) (λ(x y : ℤ) ↦ (x + x)) (x) (2) (1) - 1)

end Sequence
