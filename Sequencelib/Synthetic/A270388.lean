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

# A270388 sequence 
-/

namespace Sequence

@[OEIS := A270388, offset := 2, derive := true, maxIndex := 100]
def A270388 (n : ℕ) : ℤ :=
  let x := n - 2
  (loop2 (λ(x y : ℤ) ↦ (1 + ((x + x) + y))) (λ(x y : ℤ) ↦ x) (x) (1) (0) % (2 + x))

end Sequence
