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

# A054603 sequence 
-/

namespace Sequence

@[OEIS := A054603, offset := 0, derive := true, maxIndex := 10]
def A054603 (n : ℕ) : ℤ :=
  let x := n - 0
  (2 * loop (λ(x y : ℤ) ↦ (x + y)) ((x * x)) (x))


end Sequence
