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

# A289189 sequence 
-/

namespace Sequence

@[OEIS := A289189, offset := 1, derive := true, maxIndex := 82]
def A289189 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ ((((y / (1 + x)) + 2) / x) + x)) ((1 + x)) (1)

end Sequence
