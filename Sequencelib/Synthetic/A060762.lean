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

# A060762 sequence 
-/

namespace Sequence

@[OEIS := A060762, offset := 1, derive := true, maxIndex := 10]
def A060762 (n : ℕ) : ℤ :=
  let x := n - 1
  (1 + loop2 (λ(x y : ℤ) ↦ (1 + y)) (λ(x y : ℤ) ↦ x) (x) (1) (2))


end Sequence
