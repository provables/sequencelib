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

# A133140 sequence 
-/

namespace Sequence

@[OEIS := A133140, offset := 0, derive := true, maxIndex := 10]
def A133140 (n : ℕ) : ℤ :=
  let x := n - 0
  (2 + loop2 (λ(x y : ℤ) ↦ y) (λ(x y : ℤ) ↦ (y + y)) (x) (0) (2))


end Sequence
