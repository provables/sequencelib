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

# A295906 sequence 
-/

namespace Sequence

@[OEIS := A295906, offset := 1, derive := true, maxIndex := 45]
def A295906 (n : ℕ) : ℤ :=
  let x := n - 1
  (2 + (2 * ((2 + ((2 * (x + x)) + x)) * x)))

end Sequence
