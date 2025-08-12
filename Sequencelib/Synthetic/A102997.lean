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

# A102997 sequence 
-/

namespace Sequence

@[OEIS := A102997, offset := 1, derive := true, maxIndex := 2]
def A102997 (n : ℕ) : ℤ :=
  let x := n - 1
  ((loop (λ(x y : ℤ) ↦ (((y + x) * (x + x)) + x)) (2) (2) * x) + 1)

end Sequence
