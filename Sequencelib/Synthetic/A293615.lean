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

# A293615 sequence 
-/

namespace Sequence

@[OEIS := A293615, offset := 0, derive := true, maxIndex := 10]
def A293615 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop (λ(x y : ℤ) ↦ loop (λ(x y : ℤ) ↦ (x + y)) ((y * x)) (x)) (2) ((1 + x)) * x)

end Sequence
