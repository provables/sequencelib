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

# A083101 sequence 
-/

namespace Sequence

@[OEIS := A083101, offset := 0, derive := true, maxIndex := 100]
def A083101 (n : ℕ) : ℤ :=
  let x := n - 0
  loop2 (λ(x y : ℤ) ↦ ((2 * (x + (y + y))) + y)) (λ(x y : ℤ) ↦ (x + x)) (x) (1) (2)

end Sequence
