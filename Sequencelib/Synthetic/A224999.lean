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

# A224999 sequence 
-/

namespace Sequence

@[OEIS := A224999, offset := 1, derive := true, maxIndex := 100]
def A224999 (n : ℕ) : ℤ :=
  let x := n - 1
  (1 + ((x / 2) + x))


end Sequence
