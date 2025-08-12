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

# A295821 sequence 
-/

namespace Sequence

@[OEIS := A295821, offset := 0, derive := true, maxIndex := 55]
def A295821 (n : ℕ) : ℤ :=
  let x := n - 0
  ((2 + ((((x % 2) + x) + x) + x)) * if (x) ≤ 0 then (1) else (2))

end Sequence
