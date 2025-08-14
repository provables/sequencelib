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

# A164640 sequence 
-/

namespace Sequence

@[OEIS := A164640, offset := 1, derive := true, maxIndex := 26]
def A164640 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ(x y : ℤ) ↦ (y + y)) (λ(x y : ℤ) ↦ (2 * (x + x))) (x) (1) ((1 + 2))

end Sequence
