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

# A006331 sequence 
-/

namespace Sequence

@[OEIS := A006331, offset := 0, derive := true, maxIndex := 100]
def A006331 (n : ℕ) : ℤ :=
  let x := n - 0
  (2 * loop (λ(x y : ℤ) ↦ ((y * y) + x)) (x) (0))

end Sequence
