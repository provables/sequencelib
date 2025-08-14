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

# A001478 sequence 
-/

namespace Sequence

@[OEIS := A001478, offset := 1, derive := true, maxIndex := 100]
def A001478 (n : ℕ) : ℤ :=
  let x := n - 1
  (0 - (1 + x))

end Sequence
