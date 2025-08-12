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

# A037695 sequence 
-/

namespace Sequence

@[OEIS := A037695, offset := 1, derive := true, maxIndex := 23]
def A037695 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ (((1 + x) % (2 + 2)) + ((x * 2) * 2))) (x) (1)

end Sequence
