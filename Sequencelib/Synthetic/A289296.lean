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

# A289296 sequence 
-/

namespace Sequence

@[OEIS := A289296, offset := 0, derive := true, maxIndex := 10]
def A289296 (n : ℕ) : ℤ :=
  let x := n - 0
  ((x * x) - if ((x % 2)) ≤ 0 then (1) else (x))


end Sequence
