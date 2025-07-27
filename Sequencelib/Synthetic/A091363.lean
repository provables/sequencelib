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

# A091363 sequence 
-/

namespace Sequence

@[OEIS := A091363, offset := 0, derive := true, maxIndex := 10]
def A091363 (n : ℕ) : ℤ :=
  let x := n - 0
  ((loop (λ(x y : ℤ) ↦ (x * y)) (x) (x) * x) * x)


end Sequence
