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

# A049068 sequence 
-/

namespace Sequence

@[OEIS := A049068, offset := 1, derive := true, maxIndex := 100]
def A049068 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ (loop (λ(x y : ℤ) ↦ ((y / (x * x)) + x)) (x) (1) + x)) (2) (x)

end Sequence
