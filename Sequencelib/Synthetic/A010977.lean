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

# A010977 sequence 
-/

namespace Sequence

@[OEIS := A010977, offset := 24, derive := true, maxIndex := 100]
def A010977 (n : ℕ) : ℤ :=
  let x := n - 24
  loop (λ(x y : ℤ) ↦ ((loop (λ(x y : ℤ) ↦ (x * y)) ((2 + 2)) (x) / y) + x)) (x) (1)

end Sequence
