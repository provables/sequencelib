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

# A102693 sequence 
-/

namespace Sequence

@[OEIS := A102693, offset := 2, derive := true, maxIndex := 100]
def A102693 (n : ℕ) : ℤ :=
  let x := n - 2
  loop2 (λ(x y : ℤ) ↦ ((2 + (2 + y)) * x)) (λ(x y : ℤ) ↦ (1 + y)) (x) (1) (x)

end Sequence
