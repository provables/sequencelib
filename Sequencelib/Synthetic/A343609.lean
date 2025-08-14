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

# A343609 sequence 
-/

namespace Sequence

@[OEIS := A343609, offset := 0, derive := true, maxIndex := 95]
def A343609 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ (x / (1 + 2))) (2) (x)

end Sequence
