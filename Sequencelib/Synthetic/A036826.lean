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

# A036826 sequence 
-/

namespace Sequence

@[OEIS := A036826, offset := 0, derive := true, maxIndex := 50]
def A036826 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop (λ(x y : ℤ) ↦ ((loop (λ(x y : ℤ) ↦ (x + x)) (y) (y) * y) + x)) (x) (0) / 2)

end Sequence
