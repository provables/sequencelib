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

# A164307 sequence 
-/

namespace Sequence

@[OEIS := A164307, offset := 1, derive := true, maxIndex := 16]
def A164307 (n : ℕ) : ℤ :=
  let x := n - 1
  (1 + loop (λ(x y : ℤ) ↦ (x * x)) (x) (2))


end Sequence
