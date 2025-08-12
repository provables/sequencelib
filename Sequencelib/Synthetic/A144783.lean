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

# A144783 sequence 
-/

namespace Sequence

@[OEIS := A144783, offset := 1, derive := true, maxIndex := 8]
def A144783 (n : ℕ) : ℤ :=
  let x := n - 1
  (1 + loop (λ(x y : ℤ) ↦ ((x * x) + x)) (x) ((1 + (2 * (2 + 2)))))

end Sequence
