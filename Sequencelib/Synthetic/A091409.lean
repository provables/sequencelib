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

# A091409 sequence 
-/

namespace Sequence

@[OEIS := A091409, offset := 1, derive := true, maxIndex := 4]
def A091409 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop2 (λ(x y : ℤ) ↦ (1 + y)) (λ(x y : ℤ) ↦ (((2 + x) * x) * y)) (x) (1) (x) + x)

end Sequence
