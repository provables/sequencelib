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

# A258156 sequence 
-/

namespace Sequence

@[OEIS := A258156, offset := 2, derive := true, maxIndex := 4]
def A258156 (n : ℕ) : ℤ :=
  let x := n - 2
  (loop2 (λ(x y : ℤ) ↦ (2 + (x + y))) (λ(x y : ℤ) ↦ x) ((x * 2)) (1) ((x / 2)) * x)

end Sequence
