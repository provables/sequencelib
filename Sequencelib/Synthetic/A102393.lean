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

# A102393 sequence 
-/

namespace Sequence

@[OEIS := A102393, offset := 0, derive := true, maxIndex := 86]
def A102393 (n : ℕ) : ℤ :=
  let x := n - 0
  ((loop2 (λ(x y : ℤ) ↦ (x + y)) (λ(x y : ℤ) ↦ (y / 2)) (x) (1) (x) % 2) * (1 + x))

end Sequence
