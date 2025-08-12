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

# A263467 sequence 
-/

namespace Sequence

@[OEIS := A263467, offset := 1, derive := true, maxIndex := 6]
def A263467 (n : ℕ) : ℤ :=
  let x := n - 1
  (((loop (λ(x y : ℤ) ↦ (1 + ((x / 2) * y))) (x) (x) + 2) * 2) + 1)

end Sequence
