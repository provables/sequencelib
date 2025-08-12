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

# A141212 sequence 
-/

namespace Sequence

@[OEIS := A141212, offset := 1, derive := true, maxIndex := 87]
def A141212 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ (1 - (y % (2 + x)))) (x) (1)

end Sequence
