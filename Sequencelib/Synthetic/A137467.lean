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

# A137467 sequence 
-/

namespace Sequence

@[OEIS := A137467, offset := 3, derive := true, maxIndex := 10]
def A137467 (n : ℕ) : ℤ :=
  let x := n - 3
  (1 + (x / if ((x - 2)) ≤ 0 then (1) else (2)))


end Sequence
