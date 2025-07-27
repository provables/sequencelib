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

# A070439 sequence 
-/

namespace Sequence

@[OEIS := A070439, offset := 0, derive := true, maxIndex := 10]
def A070439 (n : ℕ) : ℤ :=
  let x := n - 0
  ((x * x) % loop (λ(x y : ℤ) ↦ (x * x)) (2) (2))


end Sequence
