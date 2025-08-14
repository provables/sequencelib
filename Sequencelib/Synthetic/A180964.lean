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

# A180964 sequence 
-/

namespace Sequence

@[OEIS := A180964, offset := 0, derive := true, maxIndex := 58]
def A180964 (n : ℕ) : ℤ :=
  let x := n - 0
  (((x + loop2 (λ(x y : ℤ) ↦ (y - x)) (λ(x y : ℤ) ↦ (0 - x)) (x) (1) (2)) + x) + x)

end Sequence
