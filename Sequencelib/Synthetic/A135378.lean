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

# A135378 sequence 
-/

namespace Sequence

@[OEIS := A135378, offset := 0, derive := true, maxIndex := 7]
def A135378 (n : ℕ) : ℤ :=
  let x := n - 0
  loop2 (λ(x y : ℤ) ↦ ((x * x) + y)) (λ(x y : ℤ) ↦ y) (x) (2) (x)

end Sequence
