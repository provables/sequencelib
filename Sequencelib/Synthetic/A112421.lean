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

# A112421 sequence 
-/

namespace Sequence

@[OEIS := A112421, offset := 7, derive := true, maxIndex := 100]
def A112421 (n : ℕ) : ℤ :=
  let x := n - 7
  ((2 * loop (λ(x y : ℤ) ↦ (((y / 2) / (1 + 2)) + x)) (x) (x)) + 2)

end Sequence
