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

# A100893 sequence 
-/

namespace Sequence

@[OEIS := A100893, offset := 1, derive := true, maxIndex := 5]
def A100893 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ loop2 (λ(x y : ℤ) ↦ (x + y)) (λ(x y : ℤ) ↦ x) ((2 + 2)) ((x + x)) (1)) (x) (2)

end Sequence
