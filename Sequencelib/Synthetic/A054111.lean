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

# A054111 sequence 
-/

namespace Sequence

@[OEIS := A054111, offset := 0, derive := true, maxIndex := 30]
def A054111 (n : ℕ) : ℤ :=
  let x := n - 0
  loop2 (λ(x y : ℤ) ↦ ((x + x) + y)) (λ(x y : ℤ) ↦ ((2 + 2) - (x % 2))) (x) (1) (0)

end Sequence
