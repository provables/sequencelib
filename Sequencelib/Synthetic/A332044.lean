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

# A332044 sequence 
-/

namespace Sequence

@[OEIS := A332044, offset := 2, derive := true, maxIndex := 50]
def A332044 (n : ℕ) : ℤ :=
  let x := n - 2
  (((2 + ((2 + (2 + x)) * x)) + (x % 2)) * 2)

end Sequence
