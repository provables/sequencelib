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

# A021499 sequence 
-/

namespace Sequence

@[OEIS := A021499, offset := 0]
def A021499 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ if (x) ≤ 0 then (2) else (0)) (x) (x)


end Sequence
