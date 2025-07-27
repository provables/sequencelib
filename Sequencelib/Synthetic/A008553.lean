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

# A008553 sequence 
-/

namespace Sequence

@[OEIS := A008553, offset := 1, derive := true, maxIndex := 10]
def A008553 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop (λ(x y : ℤ) ↦ (2 * (2 + x))) (2) (2) + x)


end Sequence
