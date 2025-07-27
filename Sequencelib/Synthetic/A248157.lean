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

# A248157 sequence 
-/

namespace Sequence

@[OEIS := A248157, offset := 0, derive := true, maxIndex := 10]
def A248157 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop2 (λ(x y : ℤ) ↦ (y - x)) (λ(x y : ℤ) ↦ 2) (x) (2) (x) - 1)


end Sequence
