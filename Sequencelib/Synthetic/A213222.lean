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

# A213222 sequence 
-/

namespace Sequence

@[OEIS := A213222, offset := 3, derive := true, maxIndex := 10]
def A213222 (n : ℕ) : ℤ :=
  let x := n - 3
  (2 + ((if (x) ≤ 0 then (1) else (x) % 2) + x))


end Sequence
