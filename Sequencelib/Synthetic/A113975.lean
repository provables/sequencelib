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

# A113975 sequence 
-/

namespace Sequence

@[OEIS := A113975, offset := 0, derive := true, maxIndex := 32]
def A113975 (n : ℕ) : ℤ :=
  let x := n - 0
  (2 + loop2 (λ(x y : ℤ) ↦ (2 + y)) (λ(x y : ℤ) ↦ 2) (x) (0) (1))

end Sequence
