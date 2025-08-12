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

# A047260 sequence 
-/

namespace Sequence

@[OEIS := A047260, offset := 1, derive := true, maxIndex := 100]
def A047260 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ(x y : ℤ) ↦ (2 + y)) (λ(x y : ℤ) ↦ x) ((x / 2)) (x) (x)

end Sequence
