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

# A093005 sequence 
-/

namespace Sequence

@[OEIS := A093005, offset := 1, derive := true, maxIndex := 100]
def A093005 (n : ℕ) : ℤ :=
  let x := n - 1
  ((1 + (x / 2)) * (1 + x))

end Sequence
