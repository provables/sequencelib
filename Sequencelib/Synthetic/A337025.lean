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

# A337025 sequence 
-/

namespace Sequence

@[OEIS := A337025, offset := 0, derive := true, maxIndex := 12]
def A337025 (n : ℕ) : ℤ :=
  let x := n - 0
  loop2 (λ(x y : ℤ) ↦ (2 * ((2 * y) * x))) (λ(x y : ℤ) ↦ y) ((2 * x)) (1) (x)

end Sequence
