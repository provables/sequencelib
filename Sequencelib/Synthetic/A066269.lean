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

# A066269 sequence 
-/

namespace Sequence

@[OEIS := A066269, offset := 1, derive := true, maxIndex := 10]
def A066269 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ (1 - (x * y))) ((x + x)) (2)


end Sequence
