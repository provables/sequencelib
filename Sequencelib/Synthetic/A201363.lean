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

# A201363 sequence 
-/

namespace Sequence

@[OEIS := A201363, offset := 1, derive := true, maxIndex := 5]
def A201363 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ (1 + (x * y))) (x) (2)


end Sequence
