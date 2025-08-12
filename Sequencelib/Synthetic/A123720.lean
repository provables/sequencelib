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

# A123720 sequence 
-/

namespace Sequence

@[OEIS := A123720, offset := 1, derive := true, maxIndex := 33]
def A123720 (n : ℕ) : ℤ :=
  let x := n - 1
  (1 + loop (λ(x y : ℤ) ↦ ((x + x) + y)) (x) (1))

end Sequence
