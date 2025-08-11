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

# A114143 sequence 
-/

namespace Sequence

@[OEIS := A114143, offset := 1, derive := true, maxIndex := 37]
def A114143 (n : ℕ) : ℤ :=
  let x := n - 1
  (2 + (2 + x))

end Sequence
