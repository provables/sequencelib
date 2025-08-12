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

# A040134 sequence 
-/

namespace Sequence

@[OEIS := A040134, offset := 0, derive := true, maxIndex := 74]
def A040134 (n : ℕ) : ℤ :=
  let x := n - 0
  (2 * (2 * (2 + loop (λ(x y : ℤ) ↦ (2 * if (x) ≤ 0 then (2) else (0))) (x) (1))))

end Sequence
