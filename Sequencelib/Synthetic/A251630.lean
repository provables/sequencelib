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

# A251630 sequence 
-/

namespace Sequence

@[OEIS := A251630, offset := 1, derive := true, maxIndex := 53]
def A251630 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop (λ(x y : ℤ) ↦ (loop (λ(x y : ℤ) ↦ (x + y)) (x) (y) / x)) (x) (1) * (1 + x))

end Sequence
