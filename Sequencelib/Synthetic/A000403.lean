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

# A000403 sequence 
-/

namespace Sequence

@[OEIS := A000403, offset := 4, derive := true, maxIndex := 10]
def A000403 (n : ℕ) : ℤ :=
  let x := n - 4
  (1 + (((x / 2) * x) / 2))


end Sequence
