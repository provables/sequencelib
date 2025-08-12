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

# A337152 sequence 
-/

namespace Sequence

@[OEIS := A337152, offset := 0, derive := true, maxIndex := 17]
def A337152 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ ((2 * (2 * (((x * y) * y) / 2))) + 1)) (x) (1)

end Sequence
