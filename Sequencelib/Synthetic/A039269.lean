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

# A039269 sequence 
-/

namespace Sequence

@[OEIS := A039269, offset := 1, derive := true, maxIndex := 70]
def A039269 (n : ℕ) : ℤ :=
  let x := n - 1
  ((2 * ((2 + x) / (((1 + 2) + 2) * 2))) + x)

end Sequence
