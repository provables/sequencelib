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

# A087170 sequence 
-/

namespace Sequence

@[OEIS := A087170, offset := 0, derive := true, maxIndex := 26]
def A087170 (n : ℕ) : ℤ :=
  let x := n - 0
  loop2 (λ(x y : ℤ) ↦ (x - (y + y))) (λ(x y : ℤ) ↦ (x + x)) ((x + x)) (1) (0)

end Sequence
