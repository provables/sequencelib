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

# A020710 sequence 
-/

namespace Sequence

@[OEIS := A020710, offset := 0, derive := true, maxIndex := 74]
def A020710 (n : ℕ) : ℤ :=
  let x := n - 0
  (1 + (2 + (2 + x)))

end Sequence
