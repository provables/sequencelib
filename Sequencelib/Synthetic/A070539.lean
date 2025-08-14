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

# A070539 sequence 
-/

namespace Sequence

@[OEIS := A070539, offset := 0, derive := true, maxIndex := 100]
def A070539 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop (λ(x y : ℤ) ↦ (x * x)) (2) (x) % loop (λ(x y : ℤ) ↦ (2 * (2 + x))) (2) (2))

end Sequence
