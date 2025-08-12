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

# A282180 sequence 
-/

namespace Sequence

@[OEIS := A282180, offset := 0, derive := true, maxIndex := 5]
def A282180 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ ((((x * x) - 2) * x) - x)) (x) ((2 * (2 + 2)))

end Sequence
