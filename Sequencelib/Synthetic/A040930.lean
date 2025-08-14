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

# A040930 sequence 
-/

namespace Sequence

@[OEIS := A040930, offset := 0, derive := true, maxIndex := 63]
def A040930 (n : ℕ) : ℤ :=
  let x := n - 0
  (((2 * loop (λ(x y : ℤ) ↦ (x * x)) (2) (2)) - 1) * if (x) ≤ 0 then (1) else (2))

end Sequence
