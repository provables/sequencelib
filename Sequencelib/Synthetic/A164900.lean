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

# A164900 sequence 
-/

namespace Sequence

@[OEIS := A164900, offset := 0, derive := true, maxIndex := 100]
def A164900 (n : ℕ) : ℤ :=
  let x := n - 0
  (((2 + ((2 + x) * x)) / ((x % 2) + 1)) + 1)

end Sequence
