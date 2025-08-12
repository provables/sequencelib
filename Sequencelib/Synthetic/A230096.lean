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

# A230096 sequence 
-/

namespace Sequence

@[OEIS := A230096, offset := 0, derive := true, maxIndex := 100]
def A230096 (n : ℕ) : ℤ :=
  let x := n - 0
  loop2 (λ(x y : ℤ) ↦ (y + y)) (λ(x y : ℤ) ↦ (x + y)) (((x + 1) / 2)) (1) (0)

end Sequence
