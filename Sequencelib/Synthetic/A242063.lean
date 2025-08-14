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

# A242063 sequence 
-/

namespace Sequence

@[OEIS := A242063, offset := 1, derive := true, maxIndex := 11]
def A242063 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop (λ(x y : ℤ) ↦ ((2 * (x * y)) - x)) ((2 + 2)) (x) + (x / 2))

end Sequence
