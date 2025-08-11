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

# A294619 sequence 
-/

namespace Sequence

@[OEIS := A294619, offset := 0, derive := true, maxIndex := 86]
def A294619 (n : ℕ) : ℤ :=
  let x := n - 0
  if ((x - 2)) ≤ 0 then (x) else (1)

end Sequence
