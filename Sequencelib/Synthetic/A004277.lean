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

# A004277 sequence 
-/

namespace Sequence

@[OEIS := A004277, offset := 0, derive := true, maxIndex := 67]
def A004277 (n : ℕ) : ℤ :=
  let x := n - 0
  (if (x) ≤ 0 then (1) else (x) + x)

end Sequence
