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

# A007364 sequence 
-/

namespace Sequence

@[OEIS := A007364, offset := 0, derive := true, maxIndex := 6]
def A007364 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop (λ(x y : ℤ) ↦ (loop (λ(x y : ℤ) ↦ (x + y)) (x) (x) + y)) ((x - 2)) (1) + x)

end Sequence
