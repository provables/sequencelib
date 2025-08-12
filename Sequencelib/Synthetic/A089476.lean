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

# A089476 sequence 
-/

namespace Sequence

@[OEIS := A089476, offset := 1, derive := true, maxIndex := 6]
def A089476 (n : ℕ) : ℤ :=
  let x := n - 1
  ((loop (λ(x y : ℤ) ↦ (x + x)) (x) (1) / 2) + loop (λ(x y : ℤ) ↦ (x * y)) (x) (1))

end Sequence
