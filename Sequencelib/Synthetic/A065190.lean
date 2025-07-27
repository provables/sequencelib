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

# A065190 sequence 
-/

namespace Sequence

@[OEIS := A065190, offset := 1, derive := true, maxIndex := 10]
def A065190 (n : ℕ) : ℤ :=
  let x := n - 1
  ((2 * (x % 2)) + if (x) ≤ 0 then (1) else (x))


end Sequence
