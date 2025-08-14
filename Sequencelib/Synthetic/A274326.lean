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

# A274326 sequence 
-/

namespace Sequence

@[OEIS := A274326, offset := 2, derive := true, maxIndex := 6]
def A274326 (n : ℕ) : ℤ :=
  let x := n - 2
  (loop2 (λ(x y : ℤ) ↦ ((2 % x) + y)) (λ(x y : ℤ) ↦ ((x + y) * x)) (x) (1) (1) - 1)

end Sequence
