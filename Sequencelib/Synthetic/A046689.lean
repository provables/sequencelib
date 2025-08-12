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

# A046689 sequence 
-/

namespace Sequence

@[OEIS := A046689, offset := 1, derive := true, maxIndex := 6]
def A046689 (n : ℕ) : ℤ :=
  let x := n - 1
  (((loop (λ(x y : ℤ) ↦ (2 + ((y - 2) * x))) (x) (1) / 2) + 2) + x)

end Sequence
