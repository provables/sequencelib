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

# A020761 sequence 
-/

namespace Sequence

@[OEIS := A020761, offset := 0, derive := true, maxIndex := 99]
def A020761 (n : ℕ) : ℤ :=
  let x := n - 0
  if (x) ≤ 0 then ((1 + (2 + 2))) else (0)

end Sequence
