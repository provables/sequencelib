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

# A134368 sequence 
-/

namespace Sequence

@[OEIS := A134368, offset := 0, derive := true, maxIndex := 7]
def A134368 (n : ℕ) : ℤ :=
  let x := n - 0
  loop2 (λ(x y : ℤ) ↦ loop (λ(x y : ℤ) ↦ (x * y)) ((y + y)) (x)) (λ(x y : ℤ) ↦ y) ((1 + x)) (1) (x)

end Sequence
