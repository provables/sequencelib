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

# A101694 sequence 
-/

namespace Sequence

@[OEIS := A101694, offset := 0, derive := true, maxIndex := 9]
def A101694 (n : ℕ) : ℤ :=
  let x := n - 0
  ((2 * (2 * (loop (λ(x y : ℤ) ↦ (x * x)) (x) (2) / (1 + 2)))) + 1)

end Sequence
