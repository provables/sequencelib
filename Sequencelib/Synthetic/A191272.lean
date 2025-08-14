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

# A191272 sequence 
-/

namespace Sequence

@[OEIS := A191272, offset := 0, derive := true, maxIndex := 24]
def A191272 (n : ℕ) : ℤ :=
  let x := n - 0
  ((loop (λ(x y : ℤ) ↦ (x + x)) ((x + x)) (1) - 1) + (x % (1 + 2)))

end Sequence
