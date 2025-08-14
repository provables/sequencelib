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

# A093002 sequence 
-/

namespace Sequence

@[OEIS := A093002, offset := 1, derive := true, maxIndex := 7]
def A093002 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ(x y : ℤ) ↦ loop (λ(x y : ℤ) ↦ (x * y)) ((1 + y)) (x)) (λ(x y : ℤ) ↦ (1 + y)) (x) (1) (x)

end Sequence
