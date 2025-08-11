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

# A263013 sequence 
-/

namespace Sequence

@[OEIS := A263013, offset := 0, derive := true, maxIndex := 86]
def A263013 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ (0 - (x / y))) (x) (1)

end Sequence
