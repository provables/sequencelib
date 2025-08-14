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

# A070495 sequence 
-/

namespace Sequence

@[OEIS := A070495, offset := 0, derive := true, maxIndex := 100]
def A070495 (n : ℕ) : ℤ :=
  let x := n - 0
  (((x * x) * x) % (1 + (2 * loop (λ(x y : ℤ) ↦ (x * x)) (2) (2))))

end Sequence
