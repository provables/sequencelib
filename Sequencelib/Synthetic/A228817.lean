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

# A228817 sequence 
-/

namespace Sequence

@[OEIS := A228817, offset := 45, derive := true, maxIndex := 5]
def A228817 (n : ℕ) : ℤ :=
  let x := n - 45
  loop (λ(x y : ℤ) ↦ (2 / if (x) ≤ 0 then (1) else (y))) (x) (1)

end Sequence
