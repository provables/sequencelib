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

# A113802 sequence 
-/

namespace Sequence

@[OEIS := A113802, offset := 1, derive := true, maxIndex := 55]
def A113802 (n : ℕ) : ℤ :=
  let x := n - 1
  (2 + (((1 + 2) * (((x % 2) + x) + x)) + x))

end Sequence
