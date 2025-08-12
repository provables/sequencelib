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

# A047525 sequence 
-/

namespace Sequence

@[OEIS := A047525, offset := 1, derive := true, maxIndex := 50]
def A047525 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop2 (λ(x y : ℤ) ↦ (x + y)) (λ(x y : ℤ) ↦ (x % (2 + 2))) ((x + x)) (1) (1) - 1)

end Sequence
