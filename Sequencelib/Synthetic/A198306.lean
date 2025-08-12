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

# A198306 sequence 
-/

namespace Sequence

@[OEIS := A198306, offset := 3, derive := true, maxIndex := 28]
def A198306 (n : ℕ) : ℤ :=
  let x := n - 3
  loop2 (λ(x y : ℤ) ↦ (2 + y)) (λ(x y : ℤ) ↦ (x + ((x * 2) * 2))) ((2 + x)) (1) (0)

end Sequence
