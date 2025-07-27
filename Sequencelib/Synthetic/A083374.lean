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

# A083374 sequence 
-/

namespace Sequence

@[OEIS := A083374, offset := 1, derive := true, maxIndex := 10]
def A083374 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ (x + y)) (((2 + x) * x)) (0)


end Sequence
