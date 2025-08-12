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

# A164587 sequence 
-/

namespace Sequence

@[OEIS := A164587, offset := 1, derive := true, maxIndex := 100]
def A164587 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ(x y : ℤ) ↦ (y + y)) (λ(x y : ℤ) ↦ x) (x) (1) ((2 + 2))

end Sequence
