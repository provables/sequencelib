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

# A154272 sequence 
-/

namespace Sequence

@[OEIS := A154272, offset := 1, derive := true, maxIndex := 100]
def A154272 (n : ℕ) : ℤ :=
  let x := n - 1
  ((2 / if (x) ≤ 0 then (2) else (x)) % 2)


end Sequence
