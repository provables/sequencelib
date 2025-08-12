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

# A000582 sequence 
-/

namespace Sequence

@[OEIS := A000582, offset := 9, derive := true, maxIndex := 100]
def A000582 (n : ℕ) : ℤ :=
  let x := n - 9
  loop (λ(x y : ℤ) ↦ ((loop (λ(x y : ℤ) ↦ ((x + x) + x)) (2) (x) / y) + x)) (x) (1)

end Sequence
