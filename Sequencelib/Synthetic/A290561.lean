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

# A290561 sequence 
-/

namespace Sequence

@[OEIS := A290561, offset := 0, derive := true, maxIndex := 10]
def A290561 (n : ℕ) : ℤ :=
  let x := n - 0
  (x + loop2 (λ(x y : ℤ) ↦ (0 - y)) (λ(x y : ℤ) ↦ x) (x) (1) (0))


end Sequence
