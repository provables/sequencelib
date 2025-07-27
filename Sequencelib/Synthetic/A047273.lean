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

# A047273 sequence 
-/

namespace Sequence

@[OEIS := A047273, offset := 1, derive := true, maxIndex := 10]
def A047273 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ (((y / 2) % 2) + x)) (x) (x)


end Sequence
