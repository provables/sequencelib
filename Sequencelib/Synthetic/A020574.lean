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

# A020574 sequence 
-/

namespace Sequence

@[OEIS := A020574, offset := 1, derive := true, maxIndex := 6]
def A020574 (n : ℕ) : ℤ :=
  let x := n - 1
  ((2 * loop (λ(x y : ℤ) ↦ (loop (λ(x y : ℤ) ↦ y) ((y - 2)) (2) + x)) (x) (1)) + 1)

end Sequence
