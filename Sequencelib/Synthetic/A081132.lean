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

# A081132 sequence 
-/

namespace Sequence

@[OEIS := A081132, offset := 0, derive := true, maxIndex := 100]
def A081132 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop2 (λ(x y : ℤ) ↦ ((x * y) + x)) (λ(x y : ℤ) ↦ y) ((1 + x)) ((2 + x)) (x) / 2)

end Sequence
