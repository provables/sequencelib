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

# A291775 sequence 
-/

namespace Sequence

@[OEIS := A291775, offset := 1, derive := true, maxIndex := 4]
def A291775 (n : ℕ) : ℤ :=
  let x := n - 1
  (2 + loop (λ(x y : ℤ) ↦ (x + x)) (((x + x) + x)) (if (x) ≤ 0 then (1) else (2)))

end Sequence
