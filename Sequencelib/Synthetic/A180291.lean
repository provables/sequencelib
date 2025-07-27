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

# A180291 sequence 
-/

namespace Sequence

@[OEIS := A180291, offset := 2, derive := true, maxIndex := 10]
def A180291 (n : ℕ) : ℤ :=
  let x := n - 2
  ((1 + x) * (if (x) ≤ 0 then (1) else (2) + x))


end Sequence
