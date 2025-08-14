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

# A291303 sequence 
-/

namespace Sequence

@[OEIS := A291303, offset := 1, derive := true, maxIndex := 7]
def A291303 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop (λ(x y : ℤ) ↦ ((loop (λ(x y : ℤ) ↦ y) ((x - 2)) (1) - x) + y)) (x) (x) + 1)

end Sequence
