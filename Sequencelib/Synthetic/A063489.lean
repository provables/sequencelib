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

# A063489 sequence 
-/

namespace Sequence

@[OEIS := A063489, offset := 1, derive := true, maxIndex := 100]
def A063489 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ (2 + (((1 + (2 + 2)) * (y * y)) + x))) (x) (1)

end Sequence
