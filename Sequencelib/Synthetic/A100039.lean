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

# A100039 sequence 
-/

namespace Sequence

@[OEIS := A100039, offset := 1, derive := true, maxIndex := 47]
def A100039 (n : ℕ) : ℤ :=
  let x := n - 1
  ((2 + (2 * (2 * loop (λ(x y : ℤ) ↦ (x + y)) ((2 + x)) (2)))) + x)

end Sequence
