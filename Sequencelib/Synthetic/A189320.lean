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

# A189320 sequence 
-/

namespace Sequence

@[OEIS := A189320, offset := 1, derive := true, maxIndex := 100]
def A189320 (n : ℕ) : ℤ :=
  let x := n - 1
  ((loop (λ(x y : ℤ) ↦ ((((x / 2) + y) + y) + y)) (x) (1) + 2) + 2)

end Sequence
