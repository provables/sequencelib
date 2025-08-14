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

# A047321 sequence 
-/

namespace Sequence

@[OEIS := A047321, offset := 1, derive := true, maxIndex := 61]
def A047321 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ loop (λ(x y : ℤ) ↦ (x + y)) ((y % (1 + 2))) (x)) ((1 + x)) (x)

end Sequence
