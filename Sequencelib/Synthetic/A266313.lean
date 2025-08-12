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

# A266313 sequence 
-/

namespace Sequence

@[OEIS := A266313, offset := 0, derive := true, maxIndex := 86]
def A266313 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ ((loop (λ(x y : ℤ) ↦ (0 - y)) (x) (x) + 2) + 2)) ((x * 2)) (x)

end Sequence
