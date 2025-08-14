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

# A030439 sequence 
-/

namespace Sequence

@[OEIS := A030439, offset := 0, derive := true, maxIndex := 38]
def A030439 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ ((loop (λ(x y : ℤ) ↦ (0 - x)) (y) ((x - 1)) + x) + x)) (x) (0)

end Sequence
