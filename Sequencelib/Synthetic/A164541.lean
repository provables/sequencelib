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

# A164541 sequence 
-/

namespace Sequence

@[OEIS := A164541, offset := 0, derive := true, maxIndex := 20]
def A164541 (n : ℕ) : ℤ :=
  let x := n - 0
  loop2 (λ(x y : ℤ) ↦ (((2 + y) + x) + y)) (λ(x y : ℤ) ↦ (x + y)) ((x + x)) (1) (2)

end Sequence
