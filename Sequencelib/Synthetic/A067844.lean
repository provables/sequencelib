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

# A067844 sequence 
-/

namespace Sequence

@[OEIS := A067844, offset := 1, derive := true, maxIndex := 54]
def A067844 (n : ℕ) : ℤ :=
  let x := n - 1
  ((loop (λ(x y : ℤ) ↦ (1 + (x + x))) ((1 + 2)) ((x / 2)) + x) * 2)

end Sequence
