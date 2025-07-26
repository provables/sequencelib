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

# A028242 sequence 
-/

namespace Sequence

@[OEIS := A028242, offset := 0]
def A028242 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ (y - x)) (x) (1)


end Sequence
