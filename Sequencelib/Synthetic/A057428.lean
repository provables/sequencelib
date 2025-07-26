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

# A057428 sequence 
-/

namespace Sequence

@[OEIS := A057428, offset := 0, derive := true, maxIndex := 100]
def A057428 (n : ℕ) : ℤ :=
  let x := n - 0
  (0 - if (x) ≤ 0 then (0) else (1))


end Sequence
