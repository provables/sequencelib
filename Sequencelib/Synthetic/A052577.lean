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

# A052577 sequence 
-/

namespace Sequence

@[OEIS := A052577, offset := 0, derive := true, maxIndex := 19]
def A052577 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ (x * y)) (x) (loop (λ(x y : ℤ) ↦ (1 + ((x + x) + x))) (x) (1))

end Sequence
