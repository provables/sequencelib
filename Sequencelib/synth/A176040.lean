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

# A176040 sequence 
-/

namespace Sequence

@[OEIS := A176040, offset := 0, derive := true, maxIndex := 100]
def A176040 (n : ℕ) : ℤ :=
  let x := n - 0
  (1 + if ((x % 2)) ≤ 0 then (2) else (0))


end Sequence
