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

# A129109 sequence 
-/

namespace Sequence

@[OEIS := A129109, offset := 0, derive := true, maxIndex := 100]
def A129109 (n : ℕ) : ℤ :=
  let x := n - 0
  (1 + ((1 + 2) * loop (λ(x y : ℤ) ↦ (1 + (x + y))) ((x + x)) (2)))

end Sequence
