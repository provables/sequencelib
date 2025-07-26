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

# A254667 sequence 
-/

namespace Sequence

@[OEIS := A254667, offset := 0]
def A254667 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ if (x) ≤ 0 then (2) else (y)) (x) (0)


end Sequence
