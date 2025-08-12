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

# A291092 sequence 
-/

namespace Sequence

@[OEIS := A291092, offset := 1, derive := true, maxIndex := 87]
def A291092 (n : ℕ) : ℤ :=
  let x := n - 1
  (1 + (2 * (2 * if (x) ≤ 0 then (0) else (2))))

end Sequence
