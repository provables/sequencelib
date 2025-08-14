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

# A175887 sequence 
-/

namespace Sequence

@[OEIS := A175887, offset := 1, derive := true, maxIndex := 54]
def A175887 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ (((loop (λ(x y : ℤ) ↦ (x * x)) (2) (2) * y) - x) - y)) (x) (1)

end Sequence
