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

# A132411 sequence 
-/

namespace Sequence

@[OEIS := A132411, offset := 0, derive := true, maxIndex := 50]
def A132411 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ y) (((x * x) - 1)) (x)

end Sequence
