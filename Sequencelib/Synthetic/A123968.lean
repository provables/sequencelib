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

# A123968 sequence 
-/

namespace Sequence

@[OEIS := A123968, offset := 1, derive := true, maxIndex := 50]
def A123968 (n : ℕ) : ℤ :=
  let x := n - 1
  (((2 + x) * x) - 2)

end Sequence
