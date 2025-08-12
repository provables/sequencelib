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

# A258812 sequence 
-/

namespace Sequence

@[OEIS := A258812, offset := 1, derive := true, maxIndex := 20]
def A258812 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop2 (λ(x y : ℤ) ↦ (x * (y * y))) (λ(x y : ℤ) ↦ x) ((2 + 2)) ((1 + x)) (1) - 1)

end Sequence
