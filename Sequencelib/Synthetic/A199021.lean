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

# A199021 sequence 
-/

namespace Sequence

@[OEIS := A199021, offset := 0, derive := true, maxIndex := 100]
def A199021 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ (loop (λ(x y : ℤ) ↦ (1 + ((2 + y) * x))) (2) (x) - x)) (x) (2)

end Sequence
