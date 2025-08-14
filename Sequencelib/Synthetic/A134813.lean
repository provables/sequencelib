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

# A134813 sequence 
-/

namespace Sequence

@[OEIS := A134813, offset := 0, derive := true, maxIndex := 45]
def A134813 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop2 (λ(x y : ℤ) ↦ (2 * (0 - (x + y)))) (λ(x y : ℤ) ↦ x) (x) ((1 + 2)) (0) / 2)

end Sequence
