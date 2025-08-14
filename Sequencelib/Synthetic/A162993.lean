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

# A162993 sequence 
-/

namespace Sequence

@[OEIS := A162993, offset := 2, derive := true, maxIndex := 15]
def A162993 (n : ℕ) : ℤ :=
  let x := n - 2
  loop (λ(x y : ℤ) ↦ (x * x)) (1) (loop (λ(x y : ℤ) ↦ ((2 + y) * x)) ((1 + x)) (1))

end Sequence
