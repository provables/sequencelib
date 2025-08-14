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

# A026393 sequence 
-/

namespace Sequence

@[OEIS := A026393, offset := 2, derive := true, maxIndex := 100]
def A026393 (n : ℕ) : ℤ :=
  let x := n - 2
  ((loop (λ(x y : ℤ) ↦ (x + y)) ((x - ((2 - x) / 2))) (1) + x) + x)

end Sequence
