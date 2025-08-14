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

# A170313 sequence 
-/

namespace Sequence

@[OEIS := A170313, offset := 0, derive := true, maxIndex := 17]
def A170313 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ ((loop (λ(x y : ℤ) ↦ (x * x)) (2) (2) - (1 % x)) * x)) (x) (1)

end Sequence
