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

# A189890 sequence 
-/

namespace Sequence

@[OEIS := A189890, offset := 1, derive := true, maxIndex := 10]
def A189890 (n : ℕ) : ℤ :=
  let x := n - 1
  (2 + (loop (λ(x y : ℤ) ↦ (x + y)) (x) (1) * x))


end Sequence
