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

# A302489 sequence 
-/

namespace Sequence

@[OEIS := A302489, offset := 3, derive := true, maxIndex := 4]
def A302489 (n : ℕ) : ℤ :=
  let x := n - 3
  ((((loop (λ(x y : ℤ) ↦ (x + x)) (x) (x) + x) + x) + 2) * (2 * 2))

end Sequence
