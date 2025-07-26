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

# A087113 sequence 
-/

namespace Sequence

@[OEIS := A087113, offset := 1, derive := true, maxIndex := 67]
def A087113 (n : ℕ) : ℤ :=
  let x := n - 1
  (2 + (x + x))


end Sequence
