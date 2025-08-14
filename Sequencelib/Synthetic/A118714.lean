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

# A118714 sequence 
-/

namespace Sequence

@[OEIS := A118714, offset := 1, derive := true, maxIndex := 10]
def A118714 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ (loop (λ(x y : ℤ) ↦ loop (λ(x y : ℤ) ↦ (1 + (x + y))) (y) (x)) (y) (y) * x)) (x) (1)

end Sequence
