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

# A192796 sequence 
-/

namespace Sequence

@[OEIS := A192796, offset := 1, derive := true, maxIndex := 100]
def A192796 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop (λ(x y : ℤ) ↦ (x + y)) (loop (λ(x y : ℤ) ↦ (1 + (x + x))) (2) (x)) (0) * x)

end Sequence
