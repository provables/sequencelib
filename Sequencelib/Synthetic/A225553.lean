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

# A225553 sequence 
-/

namespace Sequence

@[OEIS := A225553, offset := 3, derive := true, maxIndex := 38]
def A225553 (n : ℕ) : ℤ :=
  let x := n - 3
  ((loop (λ(x y : ℤ) ↦ (2 + (x + y))) ((x - 1)) (x) + x) / (1 + x))

end Sequence
