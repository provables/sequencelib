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

# A027540 sequence 
-/

namespace Sequence

@[OEIS := A027540, offset := 2, derive := true, maxIndex := 100]
def A027540 (n : ℕ) : ℤ :=
  let x := n - 2
  ((1 + (2 + x)) * loop (λ(x y : ℤ) ↦ (1 + ((x + x) + y))) (x) (1))

end Sequence
