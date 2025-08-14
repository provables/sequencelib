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

# A187206 sequence 
-/

namespace Sequence

@[OEIS := A187206, offset := 1, derive := true, maxIndex := 46]
def A187206 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ (2 + (2 * (2 * ((2 * (x + y)) + x))))) (2) (x)

end Sequence
