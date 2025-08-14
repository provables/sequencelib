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

# A100404 sequence 
-/

namespace Sequence

@[OEIS := A100404, offset := 0, derive := true, maxIndex := 21]
def A100404 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop (λ(x y : ℤ) ↦ (x * y)) (x) (1) * loop2 (λ(x y : ℤ) ↦ y) (λ(x y : ℤ) ↦ (x + y)) (x) (2) (1))

end Sequence
