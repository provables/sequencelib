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

# A131959 sequence 
-/

namespace Sequence

@[OEIS := A131959, offset := 1, derive := true, maxIndex := 10]
def A131959 (n : ℕ) : ℤ :=
  let x := n - 1
  (1 + loop (λ(x y : ℤ) ↦ y) (((x * x) - 2)) (x))


end Sequence
