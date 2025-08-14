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

# A070353 sequence 
-/

namespace Sequence

@[OEIS := A070353, offset := 0, derive := true, maxIndex := 100]
def A070353 (n : ℕ) : ℤ :=
  let x := n - 0
  (((2 - loop2 (λ(x y : ℤ) ↦ (x - y)) (λ(x y : ℤ) ↦ (x + 1)) (x) (2) (1)) * 2) + 1)

end Sequence
