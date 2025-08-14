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

# A005997 sequence 
-/

namespace Sequence

@[OEIS := A005997, offset := 1, derive := true, maxIndex := 100]
def A005997 (n : ℕ) : ℤ :=
  let x := n - 1
  (((1 + (((x * x) / 2) + x)) * (2 + x)) / 2)

end Sequence
