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

# A040093 sequence 
-/

namespace Sequence

@[OEIS := A040093, offset := 0, derive := true, maxIndex := 66]
def A040093 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop2 (λ(x y : ℤ) ↦ ((2 + y) / x)) (λ(x y : ℤ) ↦ 2) (x) (2) (1) * ((2 * 2) + 1))

end Sequence
