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

# A297038 sequence 
-/

namespace Sequence

@[OEIS := A297038, offset := 1, derive := true, maxIndex := 10]
def A297038 (n : ℕ) : ℤ :=
  let x := n - 1
  if (((x / (1 + 2)) - 2)) ≤ 0 then (0) else (1)


end Sequence
