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

# A170204 sequence 
-/

namespace Sequence

@[OEIS := A170204, offset := 0, derive := true, maxIndex := 10]
def A170204 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop (λ(x y : ℤ) ↦ (x + x)) (x) ((1 + 2)) / 2)


end Sequence
