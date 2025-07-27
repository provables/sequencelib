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

# A071045 sequence 
-/

namespace Sequence

@[OEIS := A071045, offset := 0, derive := true, maxIndex := 10]
def A071045 (n : ℕ) : ℤ :=
  let x := n - 0
  loop2 (λ(x y : ℤ) ↦ y) (λ(x y : ℤ) ↦ (1 + x)) (x) (x) (0)


end Sequence
