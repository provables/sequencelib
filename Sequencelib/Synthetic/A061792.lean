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

# A061792 sequence 
-/

namespace Sequence

@[OEIS := A061792, offset := 0, derive := true, maxIndex := 100]
def A061792 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ (x + y)) ((((1 + 2) * ((x * 2) + 1)) + x)) (0)

end Sequence
