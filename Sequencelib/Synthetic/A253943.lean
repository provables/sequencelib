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

# A253943 sequence 
-/

namespace Sequence

@[OEIS := A253943, offset := 5, derive := true, maxIndex := 100]
def A253943 (n : ℕ) : ℤ :=
  let x := n - 5
  loop (λ(x y : ℤ) ↦ (((2 * ((x + x) + x)) / y) + x)) (x) ((1 + 2))

end Sequence
