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

# A099669 sequence 
-/

namespace Sequence

@[OEIS := A099669, offset := 1, derive := true, maxIndex := 100]
def A099669 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ (2 + (2 * (((2 * (x + x)) + x) + y)))) (x) (2)

end Sequence
