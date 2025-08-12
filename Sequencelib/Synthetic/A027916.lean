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

# A027916 sequence 
-/

namespace Sequence

@[OEIS := A027916, offset := 2, derive := true, maxIndex := 53]
def A027916 (n : ℕ) : ℤ :=
  let x := n - 2
  (loop (λ(x y : ℤ) ↦ (2 + (x + y))) (x) (1) - ((x - 2) / (1 + 2)))

end Sequence
