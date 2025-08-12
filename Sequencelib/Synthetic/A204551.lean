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

# A204551 sequence 
-/

namespace Sequence

@[OEIS := A204551, offset := 1, derive := true, maxIndex := 99]
def A204551 (n : ℕ) : ℤ :=
  let x := n - 1
  (((loop (λ(x y : ℤ) ↦ (y / (2 + x))) ((x + x)) (0) / 2) / 2) + 1)

end Sequence
