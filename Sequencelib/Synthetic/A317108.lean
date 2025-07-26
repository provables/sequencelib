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

# A317108 sequence 
-/

namespace Sequence

@[OEIS := A317108, offset := 1, derive := true, maxIndex := 100]
def A317108 (n : ℕ) : ℤ :=
  let x := n - 1
  (2 + (x + x))


end Sequence
