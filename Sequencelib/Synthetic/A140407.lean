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

# A140407 sequence 
-/

namespace Sequence

@[OEIS := A140407, offset := 0, derive := true, maxIndex := 100]
def A140407 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop2 (λ(x y : ℤ) ↦ y) (λ(x y : ℤ) ↦ (x + x)) (x) (2) (1) - loop (λ(x y : ℤ) ↦ (0 - x)) (x) (1))

end Sequence
