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

# A317408 sequence 
-/

namespace Sequence

@[OEIS := A317408, offset := 0, derive := true, maxIndex := 50]
def A317408 (n : ℕ) : ℤ :=
  let x := n - 0
  loop2 (λ(x y : ℤ) ↦ (x + y)) (λ(x y : ℤ) ↦ x) ((x + x)) (0) (x)

end Sequence
