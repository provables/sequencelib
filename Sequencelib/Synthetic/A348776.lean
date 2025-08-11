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

# A348776 sequence 
-/

namespace Sequence

@[OEIS := A348776, offset := 1, derive := true, maxIndex := 83]
def A348776 (n : ℕ) : ℤ :=
  let x := n - 1
  (2 + loop (λ(x y : ℤ) ↦ y) ((x - 1)) (x))

end Sequence
