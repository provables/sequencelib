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

# A172178 sequence 
-/

namespace Sequence

@[OEIS := A172178, offset := 0, derive := true, maxIndex := 100]
def A172178 (n : ℕ) : ℤ :=
  let x := n - 0
  (1 + ((loop (λ(x y : ℤ) ↦ (1 + ((2 + x) * x))) (2) (2) * x) - x))

end Sequence
