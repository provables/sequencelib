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

# A051940 sequence 
-/

namespace Sequence

@[OEIS := A051940, offset := 8, derive := true, maxIndex := 50]
def A051940 (n : ℕ) : ℤ :=
  let x := n - 8
  loop (λ(x y : ℤ) ↦ (x + y)) (x) ((2 * loop (λ(x y : ℤ) ↦ (1 + (x + x))) (2) (x)))

end Sequence
