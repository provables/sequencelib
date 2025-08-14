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

# A242371 sequence 
-/

namespace Sequence

@[OEIS := A242371, offset := 3, derive := true, maxIndex := 47]
def A242371 (n : ℕ) : ℤ :=
  let x := n - 3
  ((2 + (2 * (2 + x))) * (((x % 2) + 2) + x))

end Sequence
