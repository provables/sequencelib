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

# A138099 sequence 
-/

namespace Sequence

@[OEIS := A138099, offset := 1, derive := true, maxIndex := 77]
def A138099 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop (λ(x y : ℤ) ↦ ((loop (λ(x y : ℤ) ↦ y) ((x - y)) (x) + x) / 2)) (x) (x) + 1)

end Sequence
