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

# A097820 sequence 
-/

namespace Sequence

@[OEIS := A097820, offset := 0, derive := true, maxIndex := 100]
def A097820 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ (x + x)) (x) (loop (λ(x y : ℤ) ↦ (1 + (2 * (x * y)))) (x) (1))

end Sequence
