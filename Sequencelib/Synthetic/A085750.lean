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

# A085750 sequence 
-/

namespace Sequence

@[OEIS := A085750, offset := 1, derive := true, maxIndex := 10]
def A085750 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop (λ(x y : ℤ) ↦ (0 - (x + x))) (x) (x) / 2)


end Sequence
