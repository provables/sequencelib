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

# A110899 sequence 
-/

namespace Sequence

@[OEIS := A110899, offset := 0, derive := true, maxIndex := 4]
def A110899 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ ((x / (1 + 2)) + x)) (((2 * 2) * (1 + x))) (x)

end Sequence
