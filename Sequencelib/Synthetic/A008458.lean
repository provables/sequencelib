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

# A008458 sequence 
-/

namespace Sequence

@[OEIS := A008458, offset := 0, derive := true, maxIndex := 10]
def A008458 (n : ℕ) : ℤ :=
  let x := n - 0
  if (x) ≤ 0 then (1) else ((2 * ((x + x) + x)))


end Sequence
