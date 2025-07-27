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

# A094258 sequence 
-/

namespace Sequence

@[OEIS := A094258, offset := 1, derive := true, maxIndex := 10]
def A094258 (n : ℕ) : ℤ :=
  let x := n - 1
  if (x) ≤ 0 then (1) else (loop (λ(x y : ℤ) ↦ (x * y)) (x) (x))


end Sequence
