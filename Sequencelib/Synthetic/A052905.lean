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

# A052905 sequence 
-/

namespace Sequence

@[OEIS := A052905, offset := 0, derive := true, maxIndex := 10]
def A052905 (n : ℕ) : ℤ :=
  let x := n - 0
  (1 + loop (λ(x y : ℤ) ↦ (2 + (x + y))) (x) (x))


end Sequence
