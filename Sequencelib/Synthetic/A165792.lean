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

# A165792 sequence 
-/

namespace Sequence

@[OEIS := A165792, offset := 0, derive := true, maxIndex := 10]
def A165792 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ ((2 + x) * y)) (x) (1)


end Sequence
