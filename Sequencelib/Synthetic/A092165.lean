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

# A092165 sequence 
-/

namespace Sequence

@[OEIS := A092165, offset := 1, derive := true, maxIndex := 23]
def A092165 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ (loop (λ(x y : ℤ) ↦ (2 * ((x + x) + x))) (y) (2) - x)) (x) (2)

end Sequence
