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

# A192447 sequence 
-/

namespace Sequence

@[OEIS := A192447, offset := 1, derive := true, maxIndex := 54]
def A192447 (n : ℕ) : ℤ :=
  let x := n - 1
  (2 * (loop (λ(x y : ℤ) ↦ (x + y)) (x) (1) / 2))

end Sequence
