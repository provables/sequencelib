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

# A180602 sequence 
-/

namespace Sequence

@[OEIS := A180602, offset := 0, derive := true, maxIndex := 12]
def A180602 (n : ℕ) : ℤ :=
  let x := n - 0
  loop2 (λ(x y : ℤ) ↦ ((2 * loop (λ(x y : ℤ) ↦ (x + x)) (y) (x)) - x)) (λ(x y : ℤ) ↦ y) (x) (1) (x)

end Sequence
