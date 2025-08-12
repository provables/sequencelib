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

# A129982 sequence 
-/

namespace Sequence

@[OEIS := A129982, offset := 0, derive := true, maxIndex := 65]
def A129982 (n : ℕ) : ℤ :=
  let x := n - 0
  if ((x % 2)) ≤ 0 then (1) else (loop2 (λ(x y : ℤ) ↦ (x + y)) (λ(x y : ℤ) ↦ x) ((x / 2)) (0) (1))

end Sequence
