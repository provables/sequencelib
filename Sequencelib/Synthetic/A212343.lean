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

# A212343 sequence 
-/

namespace Sequence

@[OEIS := A212343, offset := 2, derive := true, maxIndex := 100]
def A212343 (n : ℕ) : ℤ :=
  let x := n - 2
  ((x - 1) * loop (λ(x y : ℤ) ↦ (x + y)) (x) (x))

end Sequence
