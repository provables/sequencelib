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

# A085620 sequence 
-/

namespace Sequence

@[OEIS := A085620, offset := 4, derive := true, maxIndex := 6]
def A085620 (n : ℕ) : ℤ :=
  let x := n - 4
  loop (λ(x y : ℤ) ↦ loop2 (λ(x y : ℤ) ↦ (x + y)) (λ(x y : ℤ) ↦ (y / 2)) (x) (1) (x)) (2) ((x - 1))

end Sequence
