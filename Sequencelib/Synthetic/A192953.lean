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

# A192953 sequence 
-/

namespace Sequence

@[OEIS := A192953, offset := 0, derive := true, maxIndex := 100]
def A192953 (n : ℕ) : ℤ :=
  let x := n - 0
  (((loop2 (λ(x y : ℤ) ↦ (1 + (x + y))) (λ(x y : ℤ) ↦ x) (x) (2) (2) - 2) - x) - x)

end Sequence
