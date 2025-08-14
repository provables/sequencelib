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

# A066095 sequence 
-/

namespace Sequence

@[OEIS := A066095, offset := 0, derive := true, maxIndex := 24]
def A066095 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop (λ(x y : ℤ) ↦ (((y * y) / (2 + x)) + y)) ((1 + x)) (0) + x)

end Sequence
