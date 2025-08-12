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

# A189050 sequence 
-/

namespace Sequence

@[OEIS := A189050, offset := 1, derive := true, maxIndex := 100]
def A189050 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ(x y : ℤ) ↦ ((x + x) + y)) (λ(x y : ℤ) ↦ x) (loop (λ(x y : ℤ) ↦ (y - x)) (x) (1)) (1) (1)

end Sequence
