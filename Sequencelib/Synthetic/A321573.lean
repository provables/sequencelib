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

# A321573 sequence 
-/

namespace Sequence

@[OEIS := A321573, offset := 0, derive := true, maxIndex := 29]
def A321573 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop (λ(x y : ℤ) ↦ (((x - (1 % x)) + x) + x)) (x) (1) - (x % 2))

end Sequence
