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

# A074392 sequence 
-/

namespace Sequence

@[OEIS := A074392, offset := 0, derive := true, maxIndex := 10]
def A074392 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ (loop2 (λ(x y : ℤ) ↦ (1 + (x + y))) (λ(x y : ℤ) ↦ x) (y) (2) (0) - x)) (x) (2)

end Sequence
