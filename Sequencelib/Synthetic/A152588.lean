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

# A152588 sequence 
-/

namespace Sequence

@[OEIS := A152588, offset := 0, derive := true, maxIndex := 7]
def A152588 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop (λ(x y : ℤ) ↦ (x * x)) (x) (loop (λ(x y : ℤ) ↦ ((2 + x) * x)) (2) (1)) + 2)

end Sequence
