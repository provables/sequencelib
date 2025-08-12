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

# A145180 sequence 
-/

namespace Sequence

@[OEIS := A145180, offset := 1, derive := true, maxIndex := 5]
def A145180 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ (((2 + (x * x)) * x) + x)) (x) ((2 + (2 + 2)))

end Sequence
