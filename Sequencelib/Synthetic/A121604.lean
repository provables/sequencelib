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

# A121604 sequence 
-/

namespace Sequence

@[OEIS := A121604, offset := 0, derive := true, maxIndex := 10]
def A121604 (n : ℕ) : ℤ :=
  let x := n - 0
  (if (((x - 2) - 2)) ≤ 0 then (2) else (1) + x)


end Sequence
