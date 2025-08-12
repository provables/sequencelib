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

# A072277 sequence 
-/

namespace Sequence

@[OEIS := A072277, offset := 3, derive := true, maxIndex := 40]
def A072277 (n : ℕ) : ℤ :=
  let x := n - 3
  ((loop (λ(x y : ℤ) ↦ (x + y)) ((2 + x)) (0) * (1 + (x + 2))) + 1)

end Sequence
