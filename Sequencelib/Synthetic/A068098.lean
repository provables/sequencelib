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

# A068098 sequence 
-/

namespace Sequence

@[OEIS := A068098, offset := 0, derive := true, maxIndex := 10]
def A068098 (n : ℕ) : ℤ :=
  let x := n - 0
  loop2 (λ(x y : ℤ) ↦ y) (λ(x y : ℤ) ↦ (x + y)) (loop2 (λ(x y : ℤ) ↦ (x + y)) (λ(x y : ℤ) ↦ x) (x) (0) (1)) (2) (1)

end Sequence
