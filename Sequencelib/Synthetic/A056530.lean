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

# A056530 sequence 
-/

namespace Sequence

@[OEIS := A056530, offset := 1, derive := true, maxIndex := 59]
def A056530 (n : ℕ) : ℤ :=
  let x := n - 1
  ((((x - ((x * x) % (1 + 2))) + x) * 2) + 1)

end Sequence
