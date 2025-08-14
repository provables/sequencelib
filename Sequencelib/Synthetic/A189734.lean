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

# A189734 sequence 
-/

namespace Sequence

@[OEIS := A189734, offset := 1, derive := true, maxIndex := 26]
def A189734 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ(x y : ℤ) ↦ (((x + y) + y) + y)) (λ(x y : ℤ) ↦ ((x + x) + y)) (x) (2) (1)

end Sequence
