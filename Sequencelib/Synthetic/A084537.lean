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

# A084537 sequence 
-/

namespace Sequence

@[OEIS := A084537, offset := 0, derive := true, maxIndex := 22]
def A084537 (n : ℕ) : ℤ :=
  let x := n - 0
  (1 + ((x * x) - x))

end Sequence
