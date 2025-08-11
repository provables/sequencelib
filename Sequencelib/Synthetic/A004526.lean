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

# A004526 sequence 
-/

namespace Sequence

@[OEIS := A004526, offset := 0, derive := true, maxIndex := 100]
def A004526 (n : ℕ) : ℤ :=
  let x := n - 0
  (x / 2)

end Sequence
