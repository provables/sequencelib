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

# A171624 sequence 
-/

namespace Sequence

@[OEIS := A171624, offset := 1, derive := true, maxIndex := 86]
def A171624 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop (λ(x y : ℤ) ↦ (1 / y)) ((x / 2)) (x) + 1)

end Sequence
