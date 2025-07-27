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

# A054925 sequence 
-/

namespace Sequence

@[OEIS := A054925, offset := 0, derive := true, maxIndex := 10]
def A054925 (n : ℕ) : ℤ :=
  let x := n - 0
  (0 - (loop (λ(x y : ℤ) ↦ (x - y)) (x) (x) / 2))


end Sequence
