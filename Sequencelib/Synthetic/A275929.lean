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

# A275929 sequence 
-/

namespace Sequence

@[OEIS := A275929, offset := 1, derive := true, maxIndex := 10]
def A275929 (n : ℕ) : ℤ :=
  let x := n - 1
  (2 + (loop (λ(x y : ℤ) ↦ (x * y)) (x) (2) + x))


end Sequence
