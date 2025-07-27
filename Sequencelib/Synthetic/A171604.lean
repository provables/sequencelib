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

# A171604 sequence 
-/

namespace Sequence

@[OEIS := A171604, offset := 1, derive := true, maxIndex := 10]
def A171604 (n : ℕ) : ℤ :=
  let x := n - 1
  if (((x - 2) - 2)) ≤ 0 then (1) else ((x - 2))


end Sequence
