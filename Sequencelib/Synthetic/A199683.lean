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

# A199683 sequence 
-/

namespace Sequence

@[OEIS := A199683, offset := 0, derive := true, maxIndex := 100]
def A199683 (n : ℕ) : ℤ :=
  let x := n - 0
  (1 + loop (λ(x y : ℤ) ↦ (2 * ((2 * (x + x)) + x))) (x) ((1 + 2)))

end Sequence
