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

# A262279 sequence 
-/

namespace Sequence

@[OEIS := A262279, offset := 0, derive := true, maxIndex := 5]
def A262279 (n : ℕ) : ℤ :=
  let x := n - 0
  ((loop (λ(x y : ℤ) ↦ (2 + ((x * x) - y))) (x) (1) + x) / (1 + 2))

end Sequence
