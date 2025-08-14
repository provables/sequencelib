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

# A164839 sequence 
-/

namespace Sequence

@[OEIS := A164839, offset := 1, derive := true, maxIndex := 6]
def A164839 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ (x * x)) (1) ((1 + ((x - (x % (1 + 2))) + x)))

end Sequence
