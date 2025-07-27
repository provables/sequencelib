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

# A103505 sequence 
-/

namespace Sequence

@[OEIS := A103505, offset := 0, derive := true, maxIndex := 10]
def A103505 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ y) (((x * x) - x)) (1)


end Sequence
