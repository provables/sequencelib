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

# A097053 sequence 
-/

namespace Sequence

@[OEIS := A097053, offset := 1, derive := true, maxIndex := 56]
def A097053 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop (λ(x y : ℤ) ↦ (((1 + y) / (x + x)) * x)) (x) (1) * (1 + x))

end Sequence
