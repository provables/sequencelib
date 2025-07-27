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

# A159966 sequence 
-/

namespace Sequence

@[OEIS := A159966, offset := 0, derive := true, maxIndex := 10]
def A159966 (n : ℕ) : ℤ :=
  let x := n - 0
  (x + loop2 (λ(x y : ℤ) ↦ y) (λ(x y : ℤ) ↦ (0 - x)) (x) (0) (2))


end Sequence
