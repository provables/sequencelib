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

# A185013 sequence 
-/

namespace Sequence

@[OEIS := A185013, offset := 0, derive := true, maxIndex := 86]
def A185013 (n : ℕ) : ℤ :=
  let x := n - 0
  (1 / loop (λ(x y : ℤ) ↦ y) ((x - 2)) (2))

end Sequence
