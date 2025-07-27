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

# A242963 sequence 
-/

namespace Sequence

@[OEIS := A242963, offset := 1, derive := true, maxIndex := 10]
def A242963 (n : ℕ) : ℤ :=
  let x := n - 1
  (2 + (2 + (if (x) ≤ 0 then (1) else (2) + x)))


end Sequence
