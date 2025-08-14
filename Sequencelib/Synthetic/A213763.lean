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

# A213763 sequence 
-/

namespace Sequence

@[OEIS := A213763, offset := 1, derive := true, maxIndex := 100]
def A213763 (n : ℕ) : ℤ :=
  let x := n - 1
  ((loop2 (λ(x y : ℤ) ↦ (2 + (2 * (x + y)))) (λ(x y : ℤ) ↦ y) (x) (1) (x) * 2) - 1)

end Sequence
