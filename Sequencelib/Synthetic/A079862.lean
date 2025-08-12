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

# A079862 sequence 
-/

namespace Sequence

@[OEIS := A079862, offset := 10, derive := true, maxIndex := 100]
def A079862 (n : ℕ) : ℤ :=
  let x := n - 10
  loop (λ(x y : ℤ) ↦ (x + x)) (x) ((2 + (loop (λ(x y : ℤ) ↦ (x * x)) (2) (2) + x)))

end Sequence
