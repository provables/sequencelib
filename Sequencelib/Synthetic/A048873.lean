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

# A048873 sequence 
-/

namespace Sequence

@[OEIS := A048873, offset := 3, derive := true, maxIndex := 10]
def A048873 (n : ℕ) : ℤ :=
  let x := n - 3
  loop (λ(x y : ℤ) ↦ (x + y)) ((2 * (x - 2))) (1)


end Sequence
