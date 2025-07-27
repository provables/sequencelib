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

# A014566 sequence 
-/

namespace Sequence

@[OEIS := A014566, offset := 0, derive := true, maxIndex := 10]
def A014566 (n : ℕ) : ℤ :=
  let x := n - 0
  (1 + loop2 (λ(x y : ℤ) ↦ (x * y)) (λ(x y : ℤ) ↦ y) (x) (1) (x))


end Sequence
