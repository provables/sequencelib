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

# A117441 sequence 
-/

namespace Sequence

@[OEIS := A117441, offset := 0, derive := true, maxIndex := 78]
def A117441 (n : ℕ) : ℤ :=
  let x := n - 0
  loop2 (λ(x y : ℤ) ↦ (x - y)) (λ(x y : ℤ) ↦ x) ((x / 2)) (1) ((1 - (x % 2)))

end Sequence
