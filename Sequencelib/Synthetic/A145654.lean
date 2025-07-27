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

# A145654 sequence 
-/

namespace Sequence

@[OEIS := A145654, offset := 1, derive := true, maxIndex := 10]
def A145654 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ (2 * (x + y))) (x) (0)


end Sequence
