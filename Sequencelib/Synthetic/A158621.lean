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

# A158621 sequence 
-/

namespace Sequence

@[OEIS := A158621, offset := 2, derive := true, maxIndex := 12]
def A158621 (n : ℕ) : ℤ :=
  let x := n - 2
  (loop (λ(x y : ℤ) ↦ ((((x * y) * y) * y) + x)) ((2 + x)) (1) / 2)

end Sequence
