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

# A055865 sequence 
-/

namespace Sequence

@[OEIS := A055865, offset := 1, derive := true, maxIndex := 18]
def A055865 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop2 (λ(x y : ℤ) ↦ (((2 + y) * x) + (y / x))) (λ(x y : ℤ) ↦ y) (x) (1) (x) / 2)

end Sequence
