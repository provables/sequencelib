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

# A027475 sequence 
-/

namespace Sequence

@[OEIS := A027475, offset := 2, derive := true, maxIndex := 100]
def A027475 (n : ℕ) : ℤ :=
  let x := n - 2
  loop (λ(x y : ℤ) ↦ ((loop (λ(x y : ℤ) ↦ (x * x)) (2) (2) * x) - x)) (x) ((1 + x))

end Sequence
