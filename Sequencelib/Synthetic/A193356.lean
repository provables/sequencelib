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

# A193356 sequence 
-/

namespace Sequence

@[OEIS := A193356, offset := 1, derive := true, maxIndex := 100]
def A193356 (n : ℕ) : ℤ :=
  let x := n - 1
  if ((x % 2)) ≤ 0 then ((1 + x)) else (0)


end Sequence
