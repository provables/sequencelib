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

# A110864 sequence 
-/

namespace Sequence

@[OEIS := A110864, offset := 0, derive := true, maxIndex := 6]
def A110864 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ ((x % 2) + y)) (loop (λ(x y : ℤ) ↦ (x * y)) ((x - 1)) (1)) (0)

end Sequence
