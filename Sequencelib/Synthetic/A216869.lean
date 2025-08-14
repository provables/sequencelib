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

# A216869 sequence 
-/

namespace Sequence

@[OEIS := A216869, offset := 1, derive := true, maxIndex := 3]
def A216869 (n : ℕ) : ℤ :=
  let x := n - 1
  (1 + loop (λ(x y : ℤ) ↦ (x * y)) ((2 + 2)) (x))

end Sequence
