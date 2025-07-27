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

# A342474 sequence 
-/

namespace Sequence

@[OEIS := A342474, offset := 1, derive := true, maxIndex := 10]
def A342474 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ (2 + ((2 % y) + x))) (x) (1)


end Sequence
