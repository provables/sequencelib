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

# A072493 sequence 
-/

namespace Sequence

@[OEIS := A072493, offset := 1, derive := true, maxIndex := 100]
def A072493 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ(x y : ℤ) ↦ ((x + y) / (1 + 2))) (λ(x y : ℤ) ↦ (x + y)) (x) (1) (2)

end Sequence
