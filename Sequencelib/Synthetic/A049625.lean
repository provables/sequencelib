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

# A049625 sequence 
-/

namespace Sequence

@[OEIS := A049625, offset := 0, derive := true, maxIndex := 100]
def A049625 (n : ℕ) : ℤ :=
  let x := n - 0
  (1 + ((if (x) ≤ 0 then (1) else ((x / (1 + 2))) + (x / 2)) + x))

end Sequence
