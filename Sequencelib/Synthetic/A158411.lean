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

# A158411 sequence 
-/

namespace Sequence

@[OEIS := A158411, offset := 0]
def A158411 (n : ℕ) : ℤ :=
  let x := n - 0
  (x - comprN (λ(x : ℤ) ↦ 0) (((x - 2) - 2)))


end Sequence
