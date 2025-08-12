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

# A181773 sequence 
-/

namespace Sequence

@[OEIS := A181773, offset := 1, derive := true, maxIndex := 30]
def A181773 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ(x y : ℤ) ↦ (2 * ((x * y) + x))) (λ(x y : ℤ) ↦ x) (2) ((x + x)) (x)

end Sequence
