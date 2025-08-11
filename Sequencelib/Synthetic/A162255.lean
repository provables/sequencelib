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

# A162255 sequence 
-/

namespace Sequence

@[OEIS := A162255, offset := 1, derive := true, maxIndex := 42]
def A162255 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ(x y : ℤ) ↦ (y + y)) (λ(x y : ℤ) ↦ x) (x) ((1 + 2)) (1)

end Sequence
