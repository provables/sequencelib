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

# A258598 sequence 
-/

namespace Sequence

@[OEIS := A258598, offset := 0, derive := true, maxIndex := 26]
def A258598 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ ((x + x) + x)) (x) ((1 + loop (λ(x y : ℤ) ↦ (x * x)) (2) (2)))

end Sequence
