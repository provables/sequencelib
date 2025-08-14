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

# A037281 sequence 
-/

namespace Sequence

@[OEIS := A037281, offset := 1, derive := true, maxIndex := 11]
def A037281 (n : ℕ) : ℤ :=
  let x := n - 1
  ((loop (λ(x y : ℤ) ↦ (((2 + x) % (1 + y)) + 1)) (x) (0) / 2) / 2)

end Sequence
