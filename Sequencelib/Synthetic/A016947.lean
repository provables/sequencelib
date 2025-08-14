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

# A016947 sequence 
-/

namespace Sequence

@[OEIS := A016947, offset := 0, derive := true, maxIndex := 32]
def A016947 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ ((x * x) * x)) (1) (((1 + 2) * (1 + (x + x))))

end Sequence
