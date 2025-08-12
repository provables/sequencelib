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

# A081032 sequence 
-/

namespace Sequence

@[OEIS := A081032, offset := 1, derive := true, maxIndex := 36]
def A081032 (n : ℕ) : ℤ :=
  let x := n - 1
  comprN (λ(x : ℤ) ↦ ((x % 2) - (x % (1 + 2)))) (((x + 2) + x))

end Sequence
