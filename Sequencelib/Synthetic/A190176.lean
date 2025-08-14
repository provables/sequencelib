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

# A190176 sequence 
-/

namespace Sequence

@[OEIS := A190176, offset := 0, derive := true, maxIndex := 31]
def A190176 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop (λ(x y : ℤ) ↦ (2 + ((1 + x) * ((1 + x) * y)))) (2) (x) - 2)

end Sequence
