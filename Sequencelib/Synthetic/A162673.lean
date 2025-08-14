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

# A162673 sequence 
-/

namespace Sequence

@[OEIS := A162673, offset := 1, derive := true, maxIndex := 34]
def A162673 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ ((((x - 1) / 2) + x) * x)) (1) (((x * x) + x))

end Sequence
