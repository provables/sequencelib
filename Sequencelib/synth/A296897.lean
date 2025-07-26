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

# A296897 sequence 
-/

namespace Sequence

@[OEIS := A296897, offset := 1, derive := true, maxIndex := 100]
def A296897 (n : ℕ) : ℤ :=
  let x := n - 1
  (1 + x)


end Sequence
