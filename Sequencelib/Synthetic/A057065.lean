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

# A057065 sequence 
-/

namespace Sequence

@[OEIS := A057065, offset := 0, derive := true, maxIndex := 100]
def A057065 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop2 (λ(x y : ℤ) ↦ (x * y)) (λ(x y : ℤ) ↦ y) (x) (1) (x) / 2)

end Sequence
