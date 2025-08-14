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

# A048654 sequence 
-/

namespace Sequence

@[OEIS := A048654, offset := 0, derive := true, maxIndex := 100]
def A048654 (n : ℕ) : ℤ :=
  let x := n - 0
  loop2 (λ(x y : ℤ) ↦ ((x + x) + y)) (λ(x y : ℤ) ↦ x) (x) (1) (2)

end Sequence
