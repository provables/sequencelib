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

# A164356 sequence 
-/

namespace Sequence

@[OEIS := A164356, offset := 0, derive := true, maxIndex := 100]
def A164356 (n : ℕ) : ℤ :=
  let x := n - 0
  ((2 - loop2 (λ(x y : ℤ) ↦ (0 - y)) (λ(x y : ℤ) ↦ x) (x) (2) (0)) + if (x) ≤ 0 then (1) else (2))

end Sequence
