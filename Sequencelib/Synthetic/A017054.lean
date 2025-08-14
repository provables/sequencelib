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

# A017054 sequence 
-/

namespace Sequence

@[OEIS := A017054, offset := 0, derive := true, maxIndex := 31]
def A017054 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ (x * x)) (1) (((2 * ((1 + 2) * (1 + x))) + x))

end Sequence
