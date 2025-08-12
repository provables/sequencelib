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

# A014916 sequence 
-/

namespace Sequence

@[OEIS := A014916, offset := 1, derive := true, maxIndex := 50]
def A014916 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ (loop (λ(x y : ℤ) ↦ (x + x)) ((2 * y)) ((1 + y)) + x)) (x) (1)

end Sequence
