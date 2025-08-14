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

# A152179 sequence 
-/

namespace Sequence

@[OEIS := A152179, offset := 0, derive := true, maxIndex := 54]
def A152179 (n : ℕ) : ℤ :=
  let x := n - 0
  ((((2 + x) * x) - 1) % (1 + (2 * (2 + 2))))

end Sequence
