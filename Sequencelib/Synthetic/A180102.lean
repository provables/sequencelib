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

# A180102 sequence 
-/

namespace Sequence

@[OEIS := A180102, offset := 2, derive := true, maxIndex := 89]
def A180102 (n : ℕ) : ℤ :=
  let x := n - 2
  ((loop (λ(x y : ℤ) ↦ (2 + ((x + x) * x))) (2) (2) - 2) / (2 + x))

end Sequence
