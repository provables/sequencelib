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

# A046176 sequence 
-/

namespace Sequence

@[OEIS := A046176, offset := 1, derive := true, maxIndex := 50]
def A046176 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop2 (λ(x y : ℤ) ↦ ((x + x) + y)) (λ(x y : ℤ) ↦ x) ((2 * (x + x))) (2) (1) / 2)

end Sequence
