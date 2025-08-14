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

# A262710 sequence 
-/

namespace Sequence

@[OEIS := A262710, offset := 0, derive := true, maxIndex := 25]
def A262710 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ (0 - (2 * (x + x)))) (x) (1)

end Sequence
