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

# A204557 sequence 
-/

namespace Sequence

@[OEIS := A204557, offset := 1, derive := true, maxIndex := 100]
def A204557 (n : ℕ) : ℤ :=
  let x := n - 1
  (((2 + x) * (((x / 2) * (1 + x)) + x)) + 1)

end Sequence
