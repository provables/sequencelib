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

# A274981 sequence 
-/

namespace Sequence

@[OEIS := A274981, offset := 1, derive := true, maxIndex := 10]
def A274981 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ(x y : ℤ) ↦ (y + y)) (λ(x y : ℤ) ↦ 0) (x) (1) (2)


end Sequence
