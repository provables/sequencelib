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

# A000247 sequence 
-/

namespace Sequence

@[OEIS := A000247, offset := 2, derive := true, maxIndex := 10]
def A000247 (n : ℕ) : ℤ :=
  let x := n - 2
  (loop (λ(x y : ℤ) ↦ (2 * (x + y))) (x) (0) + x)


end Sequence
