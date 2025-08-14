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

# A263417 sequence 
-/

namespace Sequence

@[OEIS := A263417, offset := 0, derive := true, maxIndex := 11]
def A263417 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ loop (λ(x y : ℤ) ↦ (((1 + 2) * (x * y)) - x)) (y) (x)) (x) (1)

end Sequence
