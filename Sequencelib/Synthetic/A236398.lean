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

# A236398 sequence 
-/

namespace Sequence

@[OEIS := A236398, offset := 1, derive := true, maxIndex := 10]
def A236398 (n : ℕ) : ℤ :=
  let x := n - 1
  if (((2 + x) % (2 + 2))) ≤ 0 then (2) else (1)


end Sequence
