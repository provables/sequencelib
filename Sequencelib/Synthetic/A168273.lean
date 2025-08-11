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

# A168273 sequence 
-/

namespace Sequence

@[OEIS := A168273, offset := 1, derive := true, maxIndex := 100]
def A168273 (n : ℕ) : ℤ :=
  let x := n - 1
  (2 * ((x % 2) + x))

end Sequence
