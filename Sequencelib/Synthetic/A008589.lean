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

# A008589 sequence 
-/

namespace Sequence

@[OEIS := A008589, offset := 0, derive := true, maxIndex := 10]
def A008589 (n : ℕ) : ℤ :=
  let x := n - 0
  ((2 * ((x + x) + x)) + x)


end Sequence
