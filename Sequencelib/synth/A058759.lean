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

# A058759 sequence 
-/

namespace Sequence

@[OEIS := A058759, offset := 1, derive := true, maxIndex := 8]
def A058759 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ (2 + (x + y))) (x) (1)


end Sequence
