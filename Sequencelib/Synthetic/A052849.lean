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

# A052849 sequence 
-/

namespace Sequence

@[OEIS := A052849, offset := 0, derive := true, maxIndex := 10]
def A052849 (n : ℕ) : ℤ :=
  let x := n - 0
  if (x) ≤ 0 then (0) else (loop (λ(x y : ℤ) ↦ (x * y)) (x) (2))


end Sequence
