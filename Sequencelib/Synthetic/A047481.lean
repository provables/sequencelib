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

# A047481 sequence 
-/

namespace Sequence

@[OEIS := A047481, offset := 1, derive := true, maxIndex := 10]
def A047481 (n : ℕ) : ℤ :=
  let x := n - 1
  ((((x / 2) % 2) + x) + x)


end Sequence
