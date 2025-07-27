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

# A167614 sequence 
-/

namespace Sequence

@[OEIS := A167614, offset := 1, derive := true, maxIndex := 10]
def A167614 (n : ℕ) : ℤ :=
  let x := n - 1
  (1 + loop (λ(x y : ℤ) ↦ (x + y)) ((2 + x)) (2))


end Sequence
