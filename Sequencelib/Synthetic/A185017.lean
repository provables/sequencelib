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

# A185017 sequence 
-/

namespace Sequence

@[OEIS := A185017, offset := 0, derive := true, maxIndex := 10]
def A185017 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop (λ(x y : ℤ) ↦ ((x / 2) * y)) (x) (x) % 2)


end Sequence
