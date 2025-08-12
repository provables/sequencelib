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

# A178939 sequence 
-/

namespace Sequence

@[OEIS := A178939, offset := 1, derive := true, maxIndex := 5]
def A178939 (n : ℕ) : ℤ :=
  let x := n - 1
  (((x * x) / 2) + if (x) ≤ 0 then (1) else (x))

end Sequence
