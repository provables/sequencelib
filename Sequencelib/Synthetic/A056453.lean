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

# A056453 sequence 
-/

namespace Sequence

@[OEIS := A056453, offset := 1, derive := true, maxIndex := 100]
def A056453 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop (λ(x y : ℤ) ↦ (x + x)) ((x / 2)) (2) - 2)

end Sequence
