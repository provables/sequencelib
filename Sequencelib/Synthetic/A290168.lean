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

# A290168 sequence 
-/

namespace Sequence

@[OEIS := A290168, offset := 0, derive := true, maxIndex := 10]
def A290168 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop (λ(x y : ℤ) ↦ (x + y)) ((x / 2)) (0) * x)


end Sequence
