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

# A267806 sequence 
-/

namespace Sequence

@[OEIS := A267806, offset := 0, derive := true, maxIndex := 74]
def A267806 (n : ℕ) : ℤ :=
  let x := n - 0
  loop2 (λ(x y : ℤ) ↦ ((x % 2) + y)) (λ(x y : ℤ) ↦ x) (x) (1) (0)

end Sequence
