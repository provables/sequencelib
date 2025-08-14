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

# A106352 sequence 
-/

namespace Sequence

@[OEIS := A106352, offset := 4, derive := true, maxIndex := 53]
def A106352 (n : ℕ) : ℤ :=
  let x := n - 4
  (loop (λ(x y : ℤ) ↦ (((y % (1 + 2)) + x) + y)) (x) (1) - (x % 2))

end Sequence
