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

# A095351 sequence 
-/

namespace Sequence

@[OEIS := A095351, offset := 1, derive := true, maxIndex := 14]
def A095351 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop (λ(x y : ℤ) ↦ loop (λ(x y : ℤ) ↦ (x + x)) (y) (x)) (x) (loop (λ(x y : ℤ) ↦ (x + y)) (x) (0)) / 2)

end Sequence
