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

# A162273 sequence 
-/

namespace Sequence

@[OEIS := A162273, offset := 0, derive := true, maxIndex := 22]
def A162273 (n : ℕ) : ℤ :=
  let x := n - 0
  loop2 (λ(x y : ℤ) ↦ (((2 * (x + x)) - y) + x)) (λ(x y : ℤ) ↦ (x + y)) (x) (2) (1)

end Sequence
