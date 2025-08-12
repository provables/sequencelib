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

# A158488 sequence 
-/

namespace Sequence

@[OEIS := A158488, offset := 1, derive := true, maxIndex := 100]
def A158488 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ(x y : ℤ) ↦ (((x * x) + y) * (2 + 2))) (λ(x y : ℤ) ↦ 2) (2) (1) (x)

end Sequence
