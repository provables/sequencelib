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

# A124677 sequence 
-/

namespace Sequence

@[OEIS := A124677, offset := 0, derive := true, maxIndex := 5]
def A124677 (n : ℕ) : ℤ :=
  let x := n - 0
  loop2 (λ(x y : ℤ) ↦ (1 + (x + y))) (λ(x y : ℤ) ↦ x) (x) (x) (0)

end Sequence
