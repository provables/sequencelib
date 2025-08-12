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

# A011900 sequence 
-/

namespace Sequence

@[OEIS := A011900, offset := 0, derive := true, maxIndex := 50]
def A011900 (n : ℕ) : ℤ :=
  let x := n - 0
  (1 + (loop2 (λ(x y : ℤ) ↦ ((x + x) + y)) (λ(x y : ℤ) ↦ x) ((x + x)) (1) (0) / 2))

end Sequence
