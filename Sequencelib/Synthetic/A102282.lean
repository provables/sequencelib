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

# A102282 sequence 
-/

namespace Sequence

@[OEIS := A102282, offset := 1, derive := true, maxIndex := 8]
def A102282 (n : ℕ) : ℤ :=
  let x := n - 1
  comprN (λ(x : ℤ) ↦ (((loop (λ(x y : ℤ) ↦ y) ((x % (1 + 2))) (1) + x) / 2) % 2)) (x)

end Sequence
