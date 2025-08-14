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

# A174814 sequence 
-/

namespace Sequence

@[OEIS := A174814, offset := 0, derive := true, maxIndex := 41]
def A174814 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop (λ(x y : ℤ) ↦ ((y * y) + x)) ((x + x)) (0) - ((x * x) * x))

end Sequence
