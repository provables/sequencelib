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

# A154575 sequence 
-/

namespace Sequence

@[OEIS := A154575, offset := 1, derive := true, maxIndex := 100]
def A154575 (n : ℕ) : ℤ :=
  let x := n - 1
  ((loop (λ(x y : ℤ) ↦ (2 + (x + y))) ((2 * (2 + x))) (x) + x) + x)

end Sequence
