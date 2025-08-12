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

# A162265 sequence 
-/

namespace Sequence

@[OEIS := A162265, offset := 1, derive := true, maxIndex := 100]
def A162265 (n : ℕ) : ℤ :=
  let x := n - 1
  (((1 + (x + x)) * loop (λ(x y : ℤ) ↦ (2 + (x + y))) (x) (1)) + x)

end Sequence
