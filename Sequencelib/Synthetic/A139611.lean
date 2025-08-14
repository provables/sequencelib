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

# A139611 sequence 
-/

namespace Sequence

@[OEIS := A139611, offset := 0, derive := true, maxIndex := 42]
def A139611 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop (λ(x y : ℤ) ↦ (((1 + 2) * ((x * y) + x)) + y)) (2) (x) + x)

end Sequence
