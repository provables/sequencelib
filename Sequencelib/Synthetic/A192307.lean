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

# A192307 sequence 
-/

namespace Sequence

@[OEIS := A192307, offset := 1, derive := true, maxIndex := 30]
def A192307 (n : ℕ) : ℤ :=
  let x := n - 1
  ((loop2 (λ(x y : ℤ) ↦ (x - y)) (λ(x y : ℤ) ↦ (0 - x)) (x) (x) (1) + 1) * (1 + 2))

end Sequence
