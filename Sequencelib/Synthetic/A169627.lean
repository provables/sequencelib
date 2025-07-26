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

# A169627 sequence 
-/

namespace Sequence

@[OEIS := A169627, offset := 0, derive := true, maxIndex := 14]
def A169627 (n : ℕ) : ℤ :=
  let x := n - 0
  (1 + ((x * x) + x))


end Sequence
