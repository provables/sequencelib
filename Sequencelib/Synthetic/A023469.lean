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

# A023469 sequence 
-/

namespace Sequence

@[OEIS := A023469, offset := 0, derive := true, maxIndex := 10]
def A023469 (n : ℕ) : ℤ :=
  let x := n - 0
  (x - loop (λ(x y : ℤ) ↦ ((x * x) + y)) (2) (2))


end Sequence
