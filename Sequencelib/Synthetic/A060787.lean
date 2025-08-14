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

# A060787 sequence 
-/

namespace Sequence

@[OEIS := A060787, offset := 2, derive := true, maxIndex := 100]
def A060787 (n : ℕ) : ℤ :=
  let x := n - 2
  (2 * (((x - 1) + x) * loop (λ(x y : ℤ) ↦ ((x + x) + x)) (2) (x)))

end Sequence
