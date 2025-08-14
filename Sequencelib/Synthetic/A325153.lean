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

# A325153 sequence 
-/

namespace Sequence

@[OEIS := A325153, offset := 1, derive := true, maxIndex := 26]
def A325153 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop (λ(x y : ℤ) ↦ loop (λ(x y : ℤ) ↦ (((x - y) + x) + x)) (2) (x)) (x) (1) + x)

end Sequence
