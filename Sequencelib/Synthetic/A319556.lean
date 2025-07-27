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

# A319556 sequence 
-/

namespace Sequence

@[OEIS := A319556, offset := 1, derive := true, maxIndex := 10]
def A319556 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ (y - x)) (x) ((1 + x))


end Sequence
