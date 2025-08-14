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

# A157872 sequence 
-/

namespace Sequence

@[OEIS := A157872, offset := 1, derive := true, maxIndex := 100]
def A157872 (n : ℕ) : ℤ :=
  let x := n - 1
  ((1 + 2) * (2 + (((x + x) + x) * (x + 2))))

end Sequence
