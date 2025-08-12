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

# A243135 sequence 
-/

namespace Sequence

@[OEIS := A243135, offset := 0, derive := true, maxIndex := 100]
def A243135 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ (loop (λ(x y : ℤ) ↦ ((x - 1) + x)) (2) ((x * x)) * x)) (2) (x)

end Sequence
