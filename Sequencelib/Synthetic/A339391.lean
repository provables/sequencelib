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

# A339391 sequence 
-/

namespace Sequence

@[OEIS := A339391, offset := 1, derive := true, maxIndex := 19]
def A339391 (n : ℕ) : ℤ :=
  let x := n - 1
  (((x - (1 - (x % 2))) / (1 + (2 + 2))) + 2)

end Sequence
