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

# A180319 sequence 
-/

namespace Sequence

@[OEIS := A180319, offset := 1, derive := true, maxIndex := 41]
def A180319 (n : ℕ) : ℤ :=
  let x := n - 1
  ((((loop (λ(x y : ℤ) ↦ (y * y)) ((x + x)) (1) - x) * 2) - 2) * 2)

end Sequence
