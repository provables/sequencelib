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

# A047376 sequence 
-/

namespace Sequence

@[OEIS := A047376, offset := 1, derive := true, maxIndex := 61]
def A047376 (n : ℕ) : ℤ :=
  let x := n - 1
  (1 + ((2 * (((1 + x) + x) / (1 + 2))) + x))

end Sequence
