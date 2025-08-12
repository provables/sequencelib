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

# A045756 sequence 
-/

namespace Sequence

@[OEIS := A045756, offset := 0, derive := true, maxIndex := 100]
def A045756 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ (loop (λ(x y : ℤ) ↦ (((x - 2) + x) + x)) (2) (y) * x)) (x) (1)

end Sequence
