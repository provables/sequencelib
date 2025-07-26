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

# A275672 sequence 
-/

namespace Sequence

@[OEIS := A275672, offset := 0, derive := true, maxIndex := 13]
def A275672 (n : ℕ) : ℤ :=
  let x := n - 0
  ((x / 2) + x)


end Sequence
