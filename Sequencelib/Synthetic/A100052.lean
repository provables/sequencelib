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

# A100052 sequence 
-/

namespace Sequence

@[OEIS := A100052, offset := 0, derive := true, maxIndex := 60]
def A100052 (n : ℕ) : ℤ :=
  let x := n - 0
  loop2 (λ(x y : ℤ) ↦ (x - y)) (λ(x y : ℤ) ↦ x) ((x - 1)) ((1 + (x + x))) (2)

end Sequence
