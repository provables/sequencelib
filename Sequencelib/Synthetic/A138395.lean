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

# A138395 sequence 
-/

namespace Sequence

@[OEIS := A138395, offset := 1, derive := true, maxIndex := 100]
def A138395 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ(x y : ℤ) ↦ ((1 + 2) * ((x - y) + x))) (λ(x y : ℤ) ↦ x) (x) (1) (0)

end Sequence
