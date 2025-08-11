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

# A198959 sequence 
-/

namespace Sequence

@[OEIS := A198959, offset := 1, derive := true, maxIndex := 9]
def A198959 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ ((x * x) - y)) (x) (2)

end Sequence
