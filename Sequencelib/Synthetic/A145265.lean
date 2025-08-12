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

# A145265 sequence 
-/

namespace Sequence

@[OEIS := A145265, offset := 1, derive := true, maxIndex := 62]
def A145265 (n : ℕ) : ℤ :=
  let x := n - 1
  (((loop (λ(x y : ℤ) ↦ (1 - (2 / x))) ((x / 2)) (1) + x) + x) + x)

end Sequence
