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

# A047203 sequence 
-/

namespace Sequence

@[OEIS := A047203, offset := 1, derive := true, maxIndex := 72]
def A047203 (n : ℕ) : ℤ :=
  let x := n - 1
  (x - ((0 - x) / (2 + 2)))

end Sequence
