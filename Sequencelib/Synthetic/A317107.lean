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

# A317107 sequence 
-/

namespace Sequence

@[OEIS := A317107, offset := 1, derive := true, maxIndex := 65]
def A317107 (n : ℕ) : ℤ :=
  let x := n - 1
  (1 + (x + x))

end Sequence
