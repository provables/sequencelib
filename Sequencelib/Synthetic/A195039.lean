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

# A195039 sequence 
-/

namespace Sequence

@[OEIS := A195039, offset := 0, derive := true, maxIndex := 41]
def A195039 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ ((loop (λ(x y : ℤ) ↦ (x * y)) ((2 + 2)) (y) - y) + x)) (x) (0)

end Sequence
