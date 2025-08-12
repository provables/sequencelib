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

# A302488 sequence 
-/

namespace Sequence

@[OEIS := A302488, offset := 2, derive := true, maxIndex := 60]
def A302488 (n : ℕ) : ℤ :=
  let x := n - 2
  (1 + ((2 * ((x * x) / (2 * (2 + 2)))) + x))

end Sequence
