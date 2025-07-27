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

# A040003 sequence 
-/

namespace Sequence

@[OEIS := A040003, offset := 0, derive := true, maxIndex := 10]
def A040003 (n : ℕ) : ℤ :=
  let x := n - 0
  (2 + loop (λ(x y : ℤ) ↦ if (x) ≤ 0 then (2) else (0)) (x) (x))


end Sequence
