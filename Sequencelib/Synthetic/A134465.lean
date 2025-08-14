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

# A134465 sequence 
-/

namespace Sequence

@[OEIS := A134465, offset := 1, derive := true, maxIndex := 50]
def A134465 (n : ℕ) : ℤ :=
  let x := n - 1
  (1 + loop (λ(x y : ℤ) ↦ (loop (λ(x y : ℤ) ↦ (2 + (x + y))) (y) (x) + y)) (x) (x))

end Sequence
