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

# A055495 sequence 
-/

namespace Sequence

@[OEIS := A055495, offset := 1, derive := true, maxIndex := 10]
def A055495 (n : ℕ) : ℤ :=
  let x := n - 1
  (2 + (if ((x - 2)) ≤ 0 then (1) else (2) + x))


end Sequence
