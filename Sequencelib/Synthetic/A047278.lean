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

# A047278 sequence 
-/

namespace Sequence

@[OEIS := A047278, offset := 1, derive := true, maxIndex := 61]
def A047278 (n : ℕ) : ℤ :=
  let x := n - 1
  ((loop (λ(x y : ℤ) ↦ (y - x)) ((x - (x / (1 + 2)))) (1) + x) + x)

end Sequence
