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

# A001249 sequence 
-/

namespace Sequence

@[OEIS := A001249, offset := 0, derive := true, maxIndex := 50]
def A001249 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ (x * x)) (1) (loop (λ(x y : ℤ) ↦ loop (λ(x y : ℤ) ↦ (x + y)) (y) (x)) ((1 + x)) (0))

end Sequence
