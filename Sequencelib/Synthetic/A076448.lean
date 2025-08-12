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

# A076448 sequence 
-/

namespace Sequence

@[OEIS := A076448, offset := 2, derive := true, maxIndex := 9]
def A076448 (n : ℕ) : ℤ :=
  let x := n - 2
  (1 + (loop (λ(x y : ℤ) ↦ (x + x)) (x) (2) * loop (λ(x y : ℤ) ↦ (x * x)) (x) (2)))

end Sequence
