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

# A176900 sequence 
-/

namespace Sequence

@[OEIS := A176900, offset := 0, derive := true, maxIndex := 28]
def A176900 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop2 (λ(x y : ℤ) ↦ (2 * ((x - y) - y))) (λ(x y : ℤ) ↦ x) (x) (1) (1) * (1 + x))

end Sequence
