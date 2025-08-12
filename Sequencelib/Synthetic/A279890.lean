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

# A279890 sequence 
-/

namespace Sequence

@[OEIS := A279890, offset := 0, derive := true, maxIndex := 46]
def A279890 (n : ℕ) : ℤ :=
  let x := n - 0
  ((loop2 (λ(x y : ℤ) ↦ (1 + y)) (λ(x y : ℤ) ↦ (x + y)) (x) (0) (2) - (x % 2)) / 2)

end Sequence
