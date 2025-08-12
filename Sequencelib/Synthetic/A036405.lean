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

# A036405 sequence 
-/

namespace Sequence

@[OEIS := A036405, offset := 0, derive := true, maxIndex := 57]
def A036405 (n : ℕ) : ℤ :=
  let x := n - 0
  ((((x * x) - 1) / (1 + (2 + (2 + 2)))) + 1)

end Sequence
