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

# A010805 sequence 
-/

namespace Sequence

@[OEIS := A010805, offset := 0, derive := true, maxIndex := 18]
def A010805 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop (λ(x y : ℤ) ↦ (x * x)) ((2 + 2)) (x) * x)

end Sequence
