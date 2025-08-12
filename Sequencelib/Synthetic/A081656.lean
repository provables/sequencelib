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

# A081656 sequence 
-/

namespace Sequence

@[OEIS := A081656, offset := 0, derive := true, maxIndex := 100]
def A081656 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ (x + x)) (x) (loop (λ(x y : ℤ) ↦ (2 + ((x + x) + x))) (x) (1))

end Sequence
