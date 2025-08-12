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

# A257198 sequence 
-/

namespace Sequence

@[OEIS := A257198, offset := 1, derive := true, maxIndex := 100]
def A257198 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ (2 * ((y / 2) + x))) (x) (0)

end Sequence
