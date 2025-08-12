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

# A132072 sequence 
-/

namespace Sequence

@[OEIS := A132072, offset := 0, derive := true, maxIndex := 27]
def A132072 (n : ℕ) : ℤ :=
  let x := n - 0
  ((((2 + x) * x) - 1) + loop (λ(x y : ℤ) ↦ (x + x)) ((x - 1)) (2))

end Sequence
