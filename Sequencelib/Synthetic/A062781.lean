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

# A062781 sequence 
-/

namespace Sequence

@[OEIS := A062781, offset := 1, derive := true, maxIndex := 10]
def A062781 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ ((y / (1 + 2)) + x)) (x) (0)


end Sequence
