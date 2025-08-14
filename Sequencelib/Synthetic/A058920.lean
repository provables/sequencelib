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

# A058920 sequence 
-/

namespace Sequence

@[OEIS := A058920, offset := 0, derive := true, maxIndex := 100]
def A058920 (n : ℕ) : ℤ :=
  let x := n - 0
  ((1 + (2 * ((x * x) + x))) * (1 + (x * x)))

end Sequence
