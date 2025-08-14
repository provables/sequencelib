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

# A053700 sequence 
-/

namespace Sequence

@[OEIS := A053700, offset := 1, derive := true, maxIndex := 30]
def A053700 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ(x y : ℤ) ↦ (1 + ((1 + y) * x))) (λ(x y : ℤ) ↦ y) (((1 + 2) + 2)) (1) (x)

end Sequence
