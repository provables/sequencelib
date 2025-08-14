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

# A050187 sequence 
-/

namespace Sequence

@[OEIS := A050187, offset := 0, derive := true, maxIndex := 50]
def A050187 (n : ℕ) : ℤ :=
  let x := n - 0
  (((x - 1) / 2) * x)

end Sequence
