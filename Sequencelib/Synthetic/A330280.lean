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

# A330280 sequence 
-/

namespace Sequence

@[OEIS := A330280, offset := 1, derive := true, maxIndex := 4]
def A330280 (n : ℕ) : ℤ :=
  let x := n - 1
  (((1 + 2) * (x * x)) - x)

end Sequence
