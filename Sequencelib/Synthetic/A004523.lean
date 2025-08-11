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

# A004523 sequence 
-/

namespace Sequence

@[OEIS := A004523, offset := 0, derive := true, maxIndex := 70]
def A004523 (n : ℕ) : ℤ :=
  let x := n - 0
  ((x + x) / (1 + 2))

end Sequence
