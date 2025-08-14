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

# A123684 sequence 
-/

namespace Sequence

@[OEIS := A123684, offset := 1, derive := true, maxIndex := 100]
def A123684 (n : ℕ) : ℤ :=
  let x := n - 1
  (1 + loop2 (λ(x y : ℤ) ↦ y) (λ(x y : ℤ) ↦ (1 + x)) (x) (x) (0))

end Sequence
