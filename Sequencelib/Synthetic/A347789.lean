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

# A347789 sequence 
-/

namespace Sequence

@[OEIS := A347789, offset := 1, derive := true, maxIndex := 42]
def A347789 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ(x y : ℤ) ↦ (y + y)) (λ(x y : ℤ) ↦ (2 + x)) (x) (0) (1)

end Sequence
