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

# A096472 sequence 
-/

namespace Sequence

@[OEIS := A096472, offset := 1, derive := true, maxIndex := 100]
def A096472 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ loop (λ(x y : ℤ) ↦ ((2 + y) * x)) ((1 + 2)) (x)) (2) ((1 + x))

end Sequence
