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

# A067429 sequence 
-/

namespace Sequence

@[OEIS := A067429, offset := 0, derive := true, maxIndex := 50]
def A067429 (n : ℕ) : ℤ :=
  let x := n - 0
  loop2 (λ(x y : ℤ) ↦ (2 * (x * y))) (λ(x y : ℤ) ↦ (1 + 2)) ((x + x)) (1) (1)

end Sequence
