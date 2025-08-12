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

# A328979 sequence 
-/

namespace Sequence

@[OEIS := A328979, offset := 1, derive := true, maxIndex := 85]
def A328979 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ (loop (λ(x y : ℤ) ↦ if (x) ≤ 0 then (y) else (0)) (x) (2) / 2)) (((x - 1) + x)) (x)

end Sequence
