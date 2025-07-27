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

# A111284 sequence 
-/

namespace Sequence

@[OEIS := A111284, offset := 1, derive := true, maxIndex := 10]
def A111284 (n : ℕ) : ℤ :=
  let x := n - 1
  (x + loop2 (λ(x y : ℤ) ↦ y) (λ(x y : ℤ) ↦ (2 + y)) (x) (1) (x))


end Sequence
