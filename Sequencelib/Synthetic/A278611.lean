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

# A278611 sequence 
-/

namespace Sequence

@[OEIS := A278611, offset := 1, derive := true, maxIndex := 10]
def A278611 (n : ℕ) : ℤ :=
  let x := n - 1
  (2 + (loop (λ(x y : ℤ) ↦ (x * x)) (x) (2) * x))


end Sequence
