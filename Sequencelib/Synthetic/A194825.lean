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

# A194825 sequence 
-/

namespace Sequence

@[OEIS := A194825, offset := 1, derive := true, maxIndex := 86]
def A194825 (n : ℕ) : ℤ :=
  let x := n - 1
  ((((0 - x) * x) % (1 + (2 * (2 + 2)))) + 1)

end Sequence
