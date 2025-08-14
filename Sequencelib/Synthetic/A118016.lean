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

# A118016 sequence 
-/

namespace Sequence

@[OEIS := A118016, offset := 1, derive := true, maxIndex := 9]
def A118016 (n : ℕ) : ℤ :=
  let x := n - 1
  ((loop (λ(x y : ℤ) ↦ loop2 (λ(x y : ℤ) ↦ (x * y)) (λ(x y : ℤ) ↦ 2) (y) (x) (x)) (x) (1) * 2) * 2)

end Sequence
