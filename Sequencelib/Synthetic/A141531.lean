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

# A141531 sequence 
-/

namespace Sequence

@[OEIS := A141531, offset := 0, derive := true, maxIndex := 34]
def A141531 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ (0 - (x + x))) ((x - 2)) (1)

end Sequence
