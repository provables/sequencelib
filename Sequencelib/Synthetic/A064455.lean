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

# A064455 sequence 
-/

namespace Sequence

@[OEIS := A064455, offset := 1, derive := true, maxIndex := 10]
def A064455 (n : ℕ) : ℤ :=
  let x := n - 1
  (1 + loop2 (λ(x y : ℤ) ↦ (1 + y)) (λ(x y : ℤ) ↦ x) (x) (0) (x))


end Sequence
