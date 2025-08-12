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

# A087156 sequence 
-/

namespace Sequence

@[OEIS := A087156, offset := 1, derive := true, maxIndex := 77]
def A087156 (n : ℕ) : ℤ :=
  let x := n - 1
  (if (x) ≤ 0 then (0) else (1) + x)

end Sequence
