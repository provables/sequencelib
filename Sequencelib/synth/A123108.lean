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

# A123108 sequence 
-/

namespace Sequence

@[OEIS := A123108, offset := 0, derive := true, maxIndex := 100]
def A123108 (n : ℕ) : ℤ :=
  let x := n - 0
  (if (x) ≤ 0 then (2) else (x) / 2)


end Sequence
