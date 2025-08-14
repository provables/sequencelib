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

# A139614 sequence 
-/

namespace Sequence

@[OEIS := A139614, offset := 0, derive := true, maxIndex := 41]
def A139614 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ (1 + (x + (((x * y) * (1 + 2)) * 2)))) (2) (x)

end Sequence
