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

# A033130 sequence 
-/

namespace Sequence

@[OEIS := A033130, offset := 1, derive := true, maxIndex := 100]
def A033130 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ(x y : ℤ) ↦ (1 + (((x - (y % 2)) + x) + x))) (λ(x y : ℤ) ↦ x) (x) (1) (0)

end Sequence
