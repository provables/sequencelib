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

# A104675 sequence 
-/

namespace Sequence

@[OEIS := A104675, offset := 0, derive := true, maxIndex := 100]
def A104675 (n : ℕ) : ℤ :=
  let x := n - 0
  (2 * loop (λ(x y : ℤ) ↦ (x + y)) ((2 + x)) (x))

end Sequence
