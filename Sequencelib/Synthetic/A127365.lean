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

# A127365 sequence 
-/

namespace Sequence

@[OEIS := A127365, offset := 0, derive := true, maxIndex := 100]
def A127365 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop (λ(x y : ℤ) ↦ (1 - x)) ((x / 2)) (x) / 2)

end Sequence
