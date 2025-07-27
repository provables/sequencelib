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

# A240129 sequence 
-/

namespace Sequence

@[OEIS := A240129, offset := 1, derive := true, maxIndex := 10]
def A240129 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ (x + y)) (((x * x) * x)) (0)


end Sequence
