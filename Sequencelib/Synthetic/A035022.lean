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

# A035022 sequence 
-/

namespace Sequence

@[OEIS := A035022, offset := 1, derive := true, maxIndex := 100]
def A035022 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ (loop (λ(x y : ℤ) ↦ (2 + ((x + x) + x))) (2) (y) * x)) (x) (1)

end Sequence
