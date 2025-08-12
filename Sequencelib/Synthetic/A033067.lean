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

# A033067 sequence 
-/

namespace Sequence

@[OEIS := A033067, offset := 1, derive := true, maxIndex := 65]
def A033067 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop (λ(x y : ℤ) ↦ y) ((x - (1 + (2 * (2 + (2 + 2)))))) (1) + x)

end Sequence
