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

# A001438 sequence 
-/

namespace Sequence

@[OEIS := A001438, offset := 2, derive := true, maxIndex := 10]
def A001438 (n : ℕ) : ℤ :=
  let x := n - 2
  (1 + if ((x % (2 + 2))) ≤ 0 then (0) else (x))


end Sequence
