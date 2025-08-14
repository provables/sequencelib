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

# A337638 sequence 
-/

namespace Sequence

@[OEIS := A337638, offset := 0, derive := true, maxIndex := 7]
def A337638 (n : ℕ) : ℤ :=
  let x := n - 0
  loop2 (λ(x y : ℤ) ↦ ((((y * y) / (1 + 2)) + x) + y)) (λ(x y : ℤ) ↦ x) (x) (1) (1)

end Sequence
