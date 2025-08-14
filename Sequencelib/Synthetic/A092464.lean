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

# A092464 sequence 
-/

namespace Sequence

@[OEIS := A092464, offset := 1, derive := true, maxIndex := 56]
def A092464 (n : ℕ) : ℤ :=
  let x := n - 1
  ((((x / 2) + x) * (1 + 2)) + (2 * (2 + x)))

end Sequence
