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

# A213667 sequence 
-/

namespace Sequence

@[OEIS := A213667, offset := 1, derive := true, maxIndex := 100]
def A213667 (n : ℕ) : ℤ :=
  let x := n - 1
  if (x) ≤ 0 then (1) else (loop2 (λ(x y : ℤ) ↦ (2 + ((x + x) + y))) (λ(x y : ℤ) ↦ x) (x) (2) (0))

end Sequence
