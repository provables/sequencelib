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

# A042965 sequence 
-/

namespace Sequence

@[OEIS := A042965, offset := 1, derive := true, maxIndex := 10]
def A042965 (n : ℕ) : ℤ :=
  let x := n - 1
  (((1 + x) / (1 + 2)) + x)


end Sequence
