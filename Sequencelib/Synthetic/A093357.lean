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

# A093357 sequence 
-/

namespace Sequence

@[OEIS := A093357, offset := 1, derive := true, maxIndex := 23]
def A093357 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop (λ(x y : ℤ) ↦ (x + x)) (x) (loop (λ(x y : ℤ) ↦ (2 + (x + x))) (x) (1)) / 2)

end Sequence
