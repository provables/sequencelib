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

# A271779 sequence 
-/

namespace Sequence

@[OEIS := A271779, offset := 0, derive := true, maxIndex := 42]
def A271779 (n : ℕ) : ℤ :=
  let x := n - 0
  (((1 + (2 + (2 + (x * x)))) * (2 + x)) + 1)

end Sequence
