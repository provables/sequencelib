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

# A079613 sequence 
-/

namespace Sequence

@[OEIS := A079613, offset := 0]
def A079613 (n : ℕ) : ℤ :=
  let x := n - 0
  loop2 (λ(x y : ℤ) ↦ (x + y)) (λ(x y : ℤ) ↦ x) (loop (λ(x y : ℤ) ↦ (1 + (x + x))) (x) (2)) (1) (0)

end Sequence
