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

# A341311 sequence 
-/

namespace Sequence

@[OEIS := A341311, offset := 0, derive := true, maxIndex := 70]
def A341311 (n : ℕ) : ℤ :=
  let x := n - 0
  ((1 + (2 * (((x / 2) - x) / (1 + 2)))) + x)

end Sequence
