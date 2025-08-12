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

# A134267 sequence 
-/

namespace Sequence

@[OEIS := A134267, offset := 1, derive := true, maxIndex := 41]
def A134267 (n : ℕ) : ℤ :=
  let x := n - 1
  (((x - 1) % (2 * (2 - (x % 2)))) + if (x) ≤ 0 then (0) else (2))

end Sequence
