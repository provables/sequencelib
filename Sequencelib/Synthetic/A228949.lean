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

# A228949 sequence 
-/

namespace Sequence

@[OEIS := A228949, offset := 2, derive := true, maxIndex := 56]
def A228949 (n : ℕ) : ℤ :=
  let x := n - 2
  ((2 + ((1 + x) * ((x - 1) % (1 + 2)))) + x)

end Sequence
