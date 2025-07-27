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

# A179820 sequence 
-/

namespace Sequence

@[OEIS := A179820, offset := 0, derive := true, maxIndex := 10]
def A179820 (n : ℕ) : ℤ :=
  let x := n - 0
  (loop (λ(x y : ℤ) ↦ (x + y)) (x) (0) % (2 + x))


end Sequence
