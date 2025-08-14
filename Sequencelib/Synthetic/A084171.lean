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

# A084171 sequence 
-/

namespace Sequence

@[OEIS := A084171, offset := 0, derive := true, maxIndex := 26]
def A084171 (n : ℕ) : ℤ :=
  let x := n - 0
  loop2 (λ(x y : ℤ) ↦ ((2 * (x + (y / 2))) + x)) (λ(x y : ℤ) ↦ (y + y)) (x) (1) (1)

end Sequence
