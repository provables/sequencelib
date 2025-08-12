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

# A073825 sequence 
-/

namespace Sequence

@[OEIS := A073825, offset := 1, derive := true, maxIndex := 5]
def A073825 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop2 (λ(x y : ℤ) ↦ (((2 / x) + x) + y)) (λ(x y : ℤ) ↦ (x * y)) (x) (1) (1) + 1)

end Sequence
