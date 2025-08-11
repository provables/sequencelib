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

# A014113 sequence 
-/

namespace Sequence

@[OEIS := A014113, offset := 0, derive := true, maxIndex := 100]
def A014113 (n : ℕ) : ℤ :=
  let x := n - 0
  loop2 (λ(x y : ℤ) ↦ ((x + y) + y)) (λ(x y : ℤ) ↦ x) (x) (0) (1)

end Sequence
