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

# A190960 sequence 
-/

namespace Sequence

@[OEIS := A190960, offset := 0, derive := true, maxIndex := 100]
def A190960 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop2 (λ(x y : ℤ) ↦ ((y + x) + y)) (λ(x y : ℤ) ↦ ((y - x) * 2)) (x) (0) (1) / 2)

end Sequence
