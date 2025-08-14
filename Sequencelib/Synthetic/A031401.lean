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

# A031401 sequence 
-/

namespace Sequence

@[OEIS := A031401, offset := 1, derive := true, maxIndex := 11]
def A031401 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ loop (λ(x y : ℤ) ↦ (x + x)) (x) (1)) (1) (loop (λ(x y : ℤ) ↦ 2) (((x / 2) - 1)) (x))

end Sequence
