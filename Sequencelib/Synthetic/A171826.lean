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

# A171826 sequence 
-/

namespace Sequence

@[OEIS := A171826, offset := 1, derive := true, maxIndex := 9]
def A171826 (n : ℕ) : ℤ :=
  let x := n - 1
  ((loop2 (λ(x y : ℤ) ↦ (x + y)) (λ(x y : ℤ) ↦ x) (x) (0) (1) - (x / (1 + 2))) + x)

end Sequence
