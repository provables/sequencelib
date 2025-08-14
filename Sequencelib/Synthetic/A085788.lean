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

# A085788 sequence 
-/

namespace Sequence

@[OEIS := A085788, offset := 1, derive := true, maxIndex := 41]
def A085788 (n : ℕ) : ℤ :=
  let x := n - 1
  ((1 + 2) * ((2 + x) * loop (λ(x y : ℤ) ↦ (1 + (x + y))) (x) (1)))

end Sequence
