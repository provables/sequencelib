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

# A017558 sequence 
-/

namespace Sequence

@[OEIS := A017558, offset := 0, derive := true, maxIndex := 30]
def A017558 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ (x * x)) (1) (((1 + 2) * (1 + (2 * (x + x)))))

end Sequence
