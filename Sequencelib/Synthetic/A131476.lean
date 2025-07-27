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

# A131476 sequence 
-/

namespace Sequence

@[OEIS := A131476, offset := 0, derive := true, maxIndex := 10]
def A131476 (n : ℕ) : ℤ :=
  let x := n - 0
  (((x * x) * x) / (1 + 2))


end Sequence
