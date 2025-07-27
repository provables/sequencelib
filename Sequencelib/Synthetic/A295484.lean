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

# A295484 sequence 
-/

namespace Sequence

@[OEIS := A295484, offset := 1, derive := true, maxIndex := 10]
def A295484 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop2 (λ(x y : ℤ) ↦ y) (λ(x y : ℤ) ↦ (x + y)) (x) (x) (2) / 2)


end Sequence
