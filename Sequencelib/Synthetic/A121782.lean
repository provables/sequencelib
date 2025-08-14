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

# A121782 sequence 
-/

namespace Sequence

@[OEIS := A121782, offset := 1, derive := true, maxIndex := 100]
def A121782 (n : ℕ) : ℤ :=
  let x := n - 1
  ((loop (λ(x y : ℤ) ↦ (1 + ((2 + x) * x))) (2) (x) / (1 + 2)) * x)

end Sequence
