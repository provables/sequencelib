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

# A040030 sequence 
-/

namespace Sequence

@[OEIS := A040030, offset := 0, derive := true, maxIndex := 10]
def A040030 (n : ℕ) : ℤ :=
  let x := n - 0
  (2 * (2 + if (x) ≤ 0 then (1) else ((2 + 2))))


end Sequence
