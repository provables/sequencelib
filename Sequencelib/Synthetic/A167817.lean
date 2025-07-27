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

# A167817 sequence 
-/

namespace Sequence

@[OEIS := A167817, offset := 0, derive := true, maxIndex := 10]
def A167817 (n : ℕ) : ℤ :=
  let x := n - 0
  (1 + if ((x % (2 + 2))) ≤ 0 then (0) else (2))


end Sequence
