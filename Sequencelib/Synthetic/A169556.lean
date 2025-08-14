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

# A169556 sequence 
-/

namespace Sequence

@[OEIS := A169556, offset := 0, derive := true, maxIndex := 17]
def A169556 (n : ℕ) : ℤ :=
  let x := n - 0
  loop2 (λ(x y : ℤ) ↦ ((loop (λ(x y : ℤ) ↦ (x * x)) (2) (2) - y) * x)) (λ(x y : ℤ) ↦ 2) (x) (1) (1)

end Sequence
