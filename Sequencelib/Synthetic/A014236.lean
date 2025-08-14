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

# A014236 sequence 
-/

namespace Sequence

@[OEIS := A014236, offset := 0, derive := true, maxIndex := 100]
def A014236 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop (λ(x y : ℤ) ↦ (x + x)) (x) (1) - loop2 (λ(x y : ℤ) ↦ (y + y)) (λ(x y : ℤ) ↦ x) (x) (1) (0))

end Sequence
