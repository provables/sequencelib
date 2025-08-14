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

# A232996 sequence 
-/

namespace Sequence

@[OEIS := A232996, offset := 0, derive := true, maxIndex := 7]
def A232996 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop (λ(x y : ℤ) ↦ (((x + y) + 2) + (x % (2 + 2)))) (x) (1) - x)

end Sequence
