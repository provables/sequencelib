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

# A083034 sequence 
-/

namespace Sequence

@[OEIS := A083034, offset := 1, derive := true, maxIndex := 100]
def A083034 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ (((0 - x) / (2 + (2 + 2))) + y)) ((x + x)) (0)

end Sequence
