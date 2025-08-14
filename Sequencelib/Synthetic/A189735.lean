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

# A189735 sequence 
-/

namespace Sequence

@[OEIS := A189735, offset := 1, derive := true, maxIndex := 28]
def A189735 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ(x y : ℤ) ↦ y) (λ(x y : ℤ) ↦ (((x + y) + y) + y)) (x) ((1 + 2)) (1)

end Sequence
