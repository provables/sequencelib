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

# A146890 sequence 
-/

namespace Sequence

@[OEIS := A146890, offset := 1, derive := true, maxIndex := 9]
def A146890 (n : ℕ) : ℤ :=
  let x := n - 1
  if (x) ≤ 0 then (1) else ((2 * ((x % 2) + x)))

end Sequence
