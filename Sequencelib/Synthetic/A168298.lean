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

# A168298 sequence 
-/

namespace Sequence

@[OEIS := A168298, offset := 0, derive := true, maxIndex := 10]
def A168298 (n : ℕ) : ℤ :=
  let x := n - 0
  (1 - (loop (λ(x y : ℤ) ↦ (x + x)) (x) (x) * x))


end Sequence
