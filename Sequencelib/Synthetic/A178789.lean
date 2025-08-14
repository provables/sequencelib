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

# A178789 sequence 
-/

namespace Sequence

@[OEIS := A178789, offset := 1, derive := true, maxIndex := 100]
def A178789 (n : ℕ) : ℤ :=
  let x := n - 1
  (2 + loop (λ(x y : ℤ) ↦ (x + x)) ((x + x)) (1))

end Sequence
