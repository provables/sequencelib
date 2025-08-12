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

# A065603 sequence 
-/

namespace Sequence

@[OEIS := A065603, offset := 1, derive := true, maxIndex := 15]
def A065603 (n : ℕ) : ℤ :=
  let x := n - 1
  (((((x + x) / (2 + (x / 2))) + 1) + x) / 2)

end Sequence
