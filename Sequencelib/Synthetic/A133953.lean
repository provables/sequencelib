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

# A133953 sequence 
-/

namespace Sequence

@[OEIS := A133953, offset := 1, derive := true, maxIndex := 29]
def A133953 (n : ℕ) : ℤ :=
  let x := n - 1
  (1 + ((x + x) + loop2 (λ(x y : ℤ) ↦ ((x + x) + y)) (λ(x y : ℤ) ↦ x) (x) (1) (1)))

end Sequence
