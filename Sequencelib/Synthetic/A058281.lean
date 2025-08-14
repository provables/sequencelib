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

# A058281 sequence 
-/

namespace Sequence

@[OEIS := A058281, offset := 0, derive := true, maxIndex := 100]
def A058281 (n : ℕ) : ℤ :=
  let x := n - 0
  if (((x - 1) % (1 + 2))) ≤ 0 then (((x / (1 + 2)) + x)) else (1)

end Sequence
