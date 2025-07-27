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

# A047216 sequence 
-/

namespace Sequence

@[OEIS := A047216, offset := 1, derive := true, maxIndex := 10]
def A047216 (n : ℕ) : ℤ :=
  let x := n - 1
  ((loop (λ(x y : ℤ) ↦ (y - x)) (x) (1) + x) + x)


end Sequence
