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

# A294732 sequence 
-/

namespace Sequence

@[OEIS := A294732, offset := 2, derive := true, maxIndex := 100]
def A294732 (n : ℕ) : ℤ :=
  let x := n - 2
  ((if (x) ≤ 0 then (1) else (x) - (x / 2)) + x)

end Sequence
