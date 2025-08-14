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

# A165421 sequence 
-/

namespace Sequence

@[OEIS := A165421, offset := 1, derive := true, maxIndex := 10]
def A165421 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ(x y : ℤ) ↦ (((2 / x) + y) * x)) (λ(x y : ℤ) ↦ (x * y)) (x) (1) (1)

end Sequence
