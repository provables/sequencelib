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

# A178784 sequence 
-/

namespace Sequence

@[OEIS := A178784, offset := 1, derive := true, maxIndex := 9]
def A178784 (n : ℕ) : ℤ :=
  let x := n - 1
  comprN (λ(x : ℤ) ↦ (loop (λ(x y : ℤ) ↦ (1 + ((2 + x) * x))) (2) (2) % (1 + x))) (x)

end Sequence
