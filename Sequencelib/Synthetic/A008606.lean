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

# A008606 sequence 
-/

namespace Sequence

@[OEIS := A008606, offset := 0, derive := true, maxIndex := 100]
def A008606 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ (x * y)) ((2 + 2)) (x)

end Sequence
