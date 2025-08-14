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

# A071239 sequence 
-/

namespace Sequence

@[OEIS := A071239, offset := 0, derive := true, maxIndex := 40]
def A071239 (n : ℕ) : ℤ :=
  let x := n - 0
  ((loop (λ(x y : ℤ) ↦ (((y * y) - y) + x)) (x) (x) * (1 + x)) / 2)

end Sequence
