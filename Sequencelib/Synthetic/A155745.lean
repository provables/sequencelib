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

# A155745 sequence 
-/

namespace Sequence

@[OEIS := A155745, offset := 1, derive := true, maxIndex := 7]
def A155745 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ(x y : ℤ) ↦ (1 + ((x * y) - ((x / 2) / 2)))) (λ(x y : ℤ) ↦ x) (x) (1) (0)

end Sequence
