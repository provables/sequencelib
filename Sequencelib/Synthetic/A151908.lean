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

# A151908 sequence 
-/

namespace Sequence

@[OEIS := A151908, offset := 2, derive := true, maxIndex := 6]
def A151908 (n : ℕ) : ℤ :=
  let x := n - 2
  (((1 + loop (λ(x y : ℤ) ↦ (x * y)) (x) ((1 + 2))) / (2 + 2)) + x)

end Sequence
