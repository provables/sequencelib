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

# A332235 sequence 
-/

namespace Sequence

@[OEIS := A332235, offset := 0, derive := true, maxIndex := 4]
def A332235 (n : ℕ) : ℤ :=
  let x := n - 0
  (2 + loop (λ(x y : ℤ) ↦ ((x + y) * y)) (x) (x))

end Sequence
